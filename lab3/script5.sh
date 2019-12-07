#!/bin/bash
rm out.txt
for i in `find /proc -maxdepth 1 -type d`  
do
grep -s -h "^Pid:[[:space:]][[:digit:]]*" ${i}/status | awk '{printf "\nProcessID=" $2 }' >> out.txt
grep -s -h "^PPid:[[:space:]][[:digit:]]*" ${i}/status | awk '{printf " : Parent_ProcessID=" $2 }' >> out.txt
grep -s -h "^se.avg.util_sum[[:space:]]*:[[:space:]]*[[:digit:]]*" ${i}/sched | awk '{printf " :  Average_Sleeping_Time=" $3 }' >> out.txt
done
sort -n -k3 -t= out.txt | tail -n +2 | tee -i out.txt
