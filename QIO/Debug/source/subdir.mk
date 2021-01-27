################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../QIO_accel.cpp 

OBJS += \
./source/QIO_accel.o 

CPP_DEPS += \
./source/QIO_accel.d 


# Each subdirectory must supply rules for building sources it contributes
source/QIO_accel.o: C:/Users/User/PYNQ-HLS/QIO/QIO/QIO_accel.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado/2020.1/include/ap_sysc -IC:/Xilinx/Vivado/2020.1/include -IC:/Xilinx/Vivado/2020.1/include/etc -IC:/Users/User/PYNQ-HLS/QIO -IC:/Xilinx/Vivado/2020.1/win64/tools/auto_cc/include -IC:/Xilinx/Vivado/2020.1/win64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


