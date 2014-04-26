#!/usr/bin/env python

import time

INTERVAL = 2

def getTimeList():
    statFile = file("/proc/stat", "r")
    timeList = statFile.readline().split(" ")[2:6]
    statFile.close()
    for i in range(len(timeList))  :
        timeList[i] = int(timeList[i])
    return timeList

def deltaTime(interval)  :
    x = getTimeList()
    time.sleep(interval)
    y = getTimeList()
    for i in range(len(x))  :
        y[i] -= x[i]
    return y

if __name__ == "__main__"  :
    dt = deltaTime(INTERVAL)
    cpuPct = 100 - (dt[len(dt) - 1] * 100.00 / sum(dt))
    print str('%.2f%%' % cpuPct)
