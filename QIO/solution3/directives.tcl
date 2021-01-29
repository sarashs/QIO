############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_interface -mode axis -register -register_mode both "QIO_accel" input
set_directive_interface -mode axis -register -register_mode both "QIO_accel" output
set_directive_interface -mode axis -register -register_mode both "QIO_accel" output
set_directive_interface -mode s_axilite "QIO_accel" seed
set_directive_interface -mode s_axilite "QIO_accel"
set_directive_pipeline "QIO_accel_hw/QIO_hw_loop1"
set_directive_array_partition -type block -factor 8 -dim 1 "QIO_accel" coef_list
set_directive_array_partition -type block -factor 8 -dim 1 "QIO_accel_hw" current_val
set_directive_unroll -factor 8 "QIO_accel_hw/QIO_loop2"
