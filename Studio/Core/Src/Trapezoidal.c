#include "Trapezoidal.h"
#include <math.h>

/**
 * @brief  Advance the profile by dt seconds, always in a local (0 → distance_total) frame.
 *         current_velocity and current_position are non-negative.  You only apply
 *         the ±1 sign when converting to “absolute” outside.
 */
void Trapezoidal_Update(VELO_PROFILE *profile, float dt)
{
    if (profile->finished) {
        return;
    }

    // 1) How much remains in the local frame?
    //    (local coordinates always go from 0 → distance_total)
    float remaining = profile->target_position - profile->current_position;
    if (remaining < 0.0f) {
        remaining = 0.0f;
    }

    // 2) Compute stopping distance in local frame: v^2/(2a)
    float stopping_dist = (profile->current_velocity * profile->current_velocity)
                          / (2.0f * profile->a_max);

    // 3) Decide “accelerate” vs “decelerate” (all in positive magnitude)
    if (remaining <= stopping_dist) {
        // We are within braking distance → decelerate
        profile->current_velocity -= profile->a_max * dt;
        if (profile->current_velocity < 0.0f) {
            profile->current_velocity = 0.0f;
        }
    }
    else {
        // Not yet at braking zone → accelerate up to v_peak
        if (profile->current_velocity < profile->v_peak) {
            profile->current_velocity += profile->a_max * dt;
            if (profile->current_velocity > profile->v_peak) {
                profile->current_velocity = profile->v_peak;
            }
        }
        // Once we hit v_peak, we just hold it (no extra “cruise” logic needed)
    }

    // 4) Integrate position in local frame (always positive)
    profile->current_position += profile->current_velocity * dt;

    // 5) If we've reached (or overshot) distance_total, clamp & finish
    if (profile->current_position >= profile->target_position) {
        profile->current_position = profile->target_position;
        profile->current_velocity = 0.0f;
        profile->finished = 1;
    }
}

void Trapezoidal_Init(VELO_PROFILE *profile,
                      float abs_start,
                      float abs_goal,
                      float v_max,
                      float a_max)
{
    profile->start_offset    = abs_start;
    float delta              = abs_goal - abs_start;
    profile->distance_total  = fabsf(delta);
    profile->direction       = (delta >= 0.0f) ? +1.0f : -1.0f;

    profile->current_position = 0.0f;
    profile->current_velocity = 0.0f;
    profile->target_position  = profile->distance_total;
    profile->finished         = 0;

    profile->v_max = fabsf(v_max);
    profile->a_max = fabsf(a_max);

    float d_min = (profile->v_max * profile->v_max) / profile->a_max;
    if (profile->distance_total < d_min) {
        profile->is_triangular = 1;
        profile->v_peak        = sqrtf(profile->a_max * profile->distance_total);
    } else {
        profile->is_triangular = 0;
        profile->v_peak        = profile->v_max;
    }
}

