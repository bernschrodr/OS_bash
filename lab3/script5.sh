#!/bin/bash
for i in `find in /proc -maxdepth 1 -type d`  
do
grep "Pid:" ${i}/status | awk '{print "ProcessID=" $1 '
done