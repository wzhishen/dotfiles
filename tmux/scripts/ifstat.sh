#!/bin/sh
#
# Zhishen Wen
# Apr 24, 2014
# Show network speed.
ifstat -z -S -q -i "Realtek PCIe GBE Family Controller" 1 1 | tail -1 | awk '{printf "%.2fK/s %.2fK/s",$2,$3}'
