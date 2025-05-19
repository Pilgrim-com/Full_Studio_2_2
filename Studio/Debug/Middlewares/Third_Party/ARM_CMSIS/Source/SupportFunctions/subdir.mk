################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/SupportFunctions.c \
../Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/SupportFunctionsF16.c 

OBJS += \
./Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/SupportFunctions.o \
./Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/SupportFunctionsF16.o 

C_DEPS += \
./Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/SupportFunctions.d \
./Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/SupportFunctionsF16.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/%.o Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/%.su Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/%.cyclo: ../Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/%.c Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_MATRIX_CHECK -DUSE_HAL_DRIVER -DSTM32G474xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/ARM_CMSIS/CMSIS/Core/Include/ -I../Middlewares/Third_Party/ARM_CMSIS/PrivateInclude/ -I../Middlewares/Third_Party/ARM_CMSIS/Include/ -I../Middlewares/Third_Party/ARM_CMSIS/Include -I"C:/Users/spwkp/STM32CubeIDE/workspace_1.16.1/Studio/Source/BasicMathFunctions" -I"C:/Users/spwkp/STM32CubeIDE/workspace_1.16.1/Studio/Source/BayesFunctions" -I"C:/Users/spwkp/STM32CubeIDE/workspace_1.16.1/Studio/Source/CommonTables" -I"C:/Users/spwkp/STM32CubeIDE/workspace_1.16.1/Studio/Source/ComplexMathFunctions" -I"C:/Users/spwkp/STM32CubeIDE/workspace_1.16.1/Studio/Source/ControllerFunctions" -I"C:/Users/spwkp/STM32CubeIDE/workspace_1.16.1/Studio/Source/DistanceFunctions" -I"C:/Users/spwkp/STM32CubeIDE/workspace_1.16.1/Studio/Source/FastMathFunctions" -I"C:/Users/spwkp/STM32CubeIDE/workspace_1.16.1/Studio/Source/FilteringFunctions" -I"C:/Users/spwkp/STM32CubeIDE/workspace_1.16.1/Studio/Source/InterpolationFunctions" -I"C:/Users/spwkp/STM32CubeIDE/workspace_1.16.1/Studio/Source/MatrixFunctions" -I"C:/Users/spwkp/STM32CubeIDE/workspace_1.16.1/Studio/Source/QuaternionMathFunctions" -I"C:/Users/spwkp/STM32CubeIDE/workspace_1.16.1/Studio/Source/StatisticsFunctions" -I"C:/Users/spwkp/STM32CubeIDE/workspace_1.16.1/Studio/Source/SupportFunctions" -I"C:/Users/spwkp/STM32CubeIDE/workspace_1.16.1/Studio/Source/SVMFunctions" -I"C:/Users/spwkp/STM32CubeIDE/workspace_1.16.1/Studio/Source/TransformFunctions" -I"C:/Users/spwkp/STM32CubeIDE/workspace_1.16.1/Studio/Source/WindowFunctions" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-ARM_CMSIS-2f-Source-2f-SupportFunctions

clean-Middlewares-2f-Third_Party-2f-ARM_CMSIS-2f-Source-2f-SupportFunctions:
	-$(RM) ./Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/SupportFunctions.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/SupportFunctions.d ./Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/SupportFunctions.o ./Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/SupportFunctions.su ./Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/SupportFunctionsF16.cyclo ./Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/SupportFunctionsF16.d ./Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/SupportFunctionsF16.o ./Middlewares/Third_Party/ARM_CMSIS/Source/SupportFunctions/SupportFunctionsF16.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-ARM_CMSIS-2f-Source-2f-SupportFunctions

