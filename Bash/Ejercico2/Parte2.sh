#/bin/bash
echo $HOSTNAME >> info.dat
echo $USER >> info.dat 
hostname -I >> info.dat
DATE >> info.dat