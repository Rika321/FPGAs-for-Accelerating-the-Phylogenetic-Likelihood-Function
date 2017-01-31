############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FPGAs-for-Accelerating-the-Phylogenetic-Likelihood-Function
set_top compute
add_files testproject/fun.h
add_files testproject/test.c
add_files -tb testproject/data5.txt
add_files -tb testproject/test.c
open_solution "verilog-solution"
set_part {xc7k160tfbg484-2} -tool vivado
create_clock -period 10 -name default
set_clock_uncertainty 0.125
#source "./FPGAs-for-Accelerating-the-Phylogenetic-Likelihood-Function/verilog-solution/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
