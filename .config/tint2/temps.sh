# get cpu temperatures
temps=$(sensors | grep Core | grep -Po '\+.+C\s' | sed 's/[\+C]//')
temps=${temps//°C}

array=($temps)
arraylen=${#array[@]}
sum=$(dc <<< '[+]sa[z2!>az2!>b]sb'"${array[*]}lbxp")
cputemp=$(echo "$sum / $arraylen" | bc) 

gputemp=$(sensors | grep temp1 | grep -Po '\+.+C\s' | sed 's/[\+C]//')

echo -e '\uf2c8' CPU: $cputemp°C GPU: $gputemp
