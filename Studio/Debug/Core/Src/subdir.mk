################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/Kalman.c \
../Core/Src/ModBusRTU.c \
../Core/Src/PID.c \
../Core/Src/QEI.c \
../Core/Src/Trapezoidal.c \
../Core/Src/main.c \
../Core/Src/moter.c \
../Core/Src/stm32g4xx_hal_msp.c \
../Core/Src/stm32g4xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32g4xx.c 

OBJS += \
./Core/Src/Kalman.o \
./Core/Src/ModBusRTU.o \
./Core/Src/PID.o \
./Core/Src/QEI.o \
./Core/Src/Trapezoidal.o \
./Core/Src/main.o \
./Core/Src/moter.o \
./Core/Src/stm32g4xx_hal_msp.o \
./Core/Src/stm32g4xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32g4xx.o 

C_DEPS += \
./Core/Src/Kalman.d \
./Core/Src/ModBusRTU.d \
./Core/Src/PID.d \
./Core/Src/QEI.d \
./Core/Src/Trapezoidal.d \
./Core/Src/main.d \
./Core/Src/moter.d \
./Core/Src/stm32g4xx_hal_msp.d \
./Core/Src/stm32g4xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32g4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_MATRIX_CHECK -DUSE_HAL_DRIVER -DSTM32G474xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/ARM_CMSIS/CMSIS/Core/Include/ -I../Middlewares/Third_Party/ARM_CMSIS/PrivateInclude/ -I../Middlewares/Third_Party/ARM_CMSIS/Include/ -I../Middlewares/Third_Party/ARM_CMSIS/Include -I"C:/Users/spwkp/STM32CubeIDE/Full_Studio_2_2/Studio/Source/BasicMathFunctions" -I"C:/Users/spwkp/STM32CubeIDE/Full_Studio_2_2/Studio/Source/BayesFunctions" -I"C:/Users/spwkp/STM32CubeIDE/Full_Studio_2_2/Studio/Source/CommonTables" -I"C:/Users/spwkp/STM32CubeIDE/Full_Studio_2_2/Studio/Source/ComplexMathFunctions" -I"C:/Users/spwkp/STM32CubeIDE/Full_Studio_2_2/Studio/Source/ControllerFunctions" -I"C:/Users/spwkp/STM32CubeIDE/Full_Studio_2_2/Studio/Source/DistanceFunctions" -I"C:/Users/spwkp/STM32CubeIDE/Full_Studio_2_2/Studio/Source/FastMathFunctions" -I"C:/Users/spwkp/STM32CubeIDE/Full_Studio_2_2/Studio/Source/FilteringFunctions" -I"C:/Users/spwkp/STM32CubeIDE/Full_Studio_2_2/Studio/Source/InterpolationFunctions" -I"C:/Users/spwkp/STM32CubeIDE/Full_Studio_2_2/Studio/Source/MatrixFunctions" -I"C:/Users/spwkp/STM32CubeIDE/Full_Studio_2_2/Studio/Source/QuaternionMathFunctions" -I"C:/Users/spwkp/STM32CubeIDE/Full_Studio_2_2/Studio/Source/StatisticsFunctions" -I"C:/Users/spwkp/STM32CubeIDE/Full_Studio_2_2/Studio/Source/SupportFunctions" -I"C:/Users/spwkp/STM32CubeIDE/Full_Studio_2_2/Studio/Source/SVMFunctions" -I"C:/Users/spwkp/STM32CubeIDE/Full_Studio_2_2/Studio/Source/TransformFunctions" -I"C:/Users/spwkp/STM32CubeIDE/Full_Studio_2_2/Studio/Source/WindowFunctions" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/Kalman.cyclo ./Core/Src/Kalman.d ./Core/Src/Kalman.o ./Core/Src/Kalman.su ./Core/Src/ModBusRTU.cyclo ./Core/Src/ModBusRTU.d ./Core/Src/ModBusRTU.o ./Core/Src/ModBusRTU.su ./Core/Src/PID.cyclo ./Core/Src/PID.d ./Core/Src/PID.o ./Core/Src/PID.su ./Core/Src/QEI.cyclo ./Core/Src/QEI.d ./Core/Src/QEI.o ./Core/Src/QEI.su ./Core/Src/Trapezoidal.cyclo ./Core/Src/Trapezoidal.d ./Core/Src/Trapezoidal.o ./Core/Src/Trapezoidal.su ./Core/Src/main.cyclo ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/moter.cyclo ./Core/Src/moter.d ./Core/Src/moter.o ./Core/Src/moter.su ./Core/Src/stm32g4xx_hal_msp.cyclo ./Core/Src/stm32g4xx_hal_msp.d ./Core/Src/stm32g4xx_hal_msp.o ./Core/Src/stm32g4xx_hal_msp.su ./Core/Src/stm32g4xx_it.cyclo ./Core/Src/stm32g4xx_it.d ./Core/Src/stm32g4xx_it.o ./Core/Src/stm32g4xx_it.su ./Core/Src/syscalls.cyclo ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.cyclo ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32g4xx.cyclo ./Core/Src/system_stm32g4xx.d ./Core/Src/system_stm32g4xx.o ./Core/Src/system_stm32g4xx.su

.PHONY: clean-Core-2f-Src

