#!/bin/bash
source /opt/intel/inteloneapi/setvars.sh > /dev/null 2>&1
/bin/echo "##" $(whoami) is compiling
mpiicpc -cxx=icpx lab/PSO.cpp -fiopenmp -fopenmp-targets=spir64 -o bin/PSO.x
