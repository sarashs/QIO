############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project QIO
set_top QIO_accel
add_files QIO/lfsr.h
add_files QIO/QIO_accel.cpp
add_files QIO/QIO.h
add_files -tb QIO/OIO_accel_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
#source "./QIO/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
