#!/bin/sh


cat ./170_120_mod/output_rad/output_main/00100.dat | awk '{printf "%3d %4.3E\n",$1,(6.8*1E-38*1E-12*$3*$4/(sqrt($14))*exp(-6.62607004E-34*(2.99792458E8/(50*1E-9))/(8.617333*1E-5*$14)))/(6.62607004E-34*2.99792458E8/(50*1E-9))}'
