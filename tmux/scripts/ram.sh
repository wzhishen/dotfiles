#!/bin/sh
#
# Zhishen Wen
# Apr 24, 2014
# Show memory usage.
mem_data=`free -m | grep Mem`
used=`echo $mem_data | cut -f3 -d' '`
total=`echo $mem_data | cut -f2 -d' '`
echo "$used""M/""$total""M"
