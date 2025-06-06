import numpy as np
from HersheyFonts import HersheyFonts as HersheyFont

txt      = "HELLO"
font_h   = 50.0      # mm
step_xy  = 1.0       # mm ระยะ sampling

# --- 1) สร้างอ็อบเจ็กต์ฟอนต์และเลือก typeface ---
hf = HersheyFont()
hf.load_default_font("futural")         # หรือชื่ออื่น ดู hf.default_font_names

# --- 2) แปลงข้อความเป็นเส้นสโตรก ---
lines = hf.render(txt, font_h)          # คืน list ของ ((x1,y1),(x2,y2))

# --- 3) รวมทุกจุดเป็นพิกัด XY ต่อเนื่อง ---
xy = []
for seg in lines:
    (x1, y1), (x2, y2) = seg
    # สุ่มแบ่งซอยเป็นจุดย่อยตาม step_xy
    L   = np.hypot(x2 - x1, y2 - y1)
    npt = max(2, int(L/step_xy))
    xs  = np.linspace(x1, x2, npt)
    ys  = np.linspace(y1, y2, npt)
    xy.extend(zip(xs, ys))

# --- 4) แปลง XY → (r, θ) สำหรับหุ่นยนต์แกนหมุน+สไลด์ ---
r  = np.hypot([x for x, y in xy], [y for x, y in xy])
th = np.degrees(np.arctan2([y for x, y in xy], [x for x, y in xy]))

# ตอนบันทึกส่งลง MCU
np.savetxt("hello_rtheta.csv",
           np.column_stack([r, th]),
           delimiter=",",
           header="r_mm,theta_deg",
           comments='')
print("Saved trajectory: hello_rtheta.csv")