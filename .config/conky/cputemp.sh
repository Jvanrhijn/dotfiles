# get cpu temperatures
temps=$(sensors | grep Core | grep -Po '\+.+C\s' | sed 's/[\+C]//')
echo $temps | tr ' ' '.'
