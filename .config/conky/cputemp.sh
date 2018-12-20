#!/bin/bash
# get cpu temperatures
temps=$(sensors | grep Core | grep -Po '\+.+C\s' | sed 's/[\+C]//')
temparray=($temps)
echo ${temparray[$1]}
#echo $temps | tr ' ' '.'
