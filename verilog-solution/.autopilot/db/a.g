#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/rika/eceproject/hequ2/FPGAs-for-Accelerating-the-Phylogenetic-Likelihood-Function/verilog-solution/.autopilot/db/a.g.bc ${1+"$@"}
