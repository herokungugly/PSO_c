#!/bin/bash
source /opt/intel/inteloneapi/setvars.sh > /dev/null 2>&1
% setenv OMP_TARGET_OFFLOAD MANDATORY
export IBOMPTARGET_INFO=4
/bin/echo "##" $(whoami) is executing
mpirun -np 4 bin/PSO.x
