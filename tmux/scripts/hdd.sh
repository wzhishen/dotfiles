#!/bin/sh
#
# Zhishen Wen
# Apr 24, 2014
# Show disk usage for root partition.
df -lh | awk '{if ($6 == "/") { print $3 "/" $2 }}'
