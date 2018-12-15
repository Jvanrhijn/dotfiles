gputemp=$(sensors | grep temp1 | grep -Po '\+.+C\s' | sed 's/[\+C]//')
echo $gputemp
