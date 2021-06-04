#!/bin/bash

#preparatory work before running the sample
module load jags/4.3.0
module load R/4.1.0-intel
module unload gcc/4.7.4
export LD_LIBRARY_PATH=/share/apps/anaconda/3/5.1.0/lib:$LD_LIBRARY_PATH
export R_LIBS=/lustre/project/wdeng7/R_LIB_Share/Library
