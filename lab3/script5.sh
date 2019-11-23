#!/bin/bash
rm out.txt
for i in `find /proc -maxdepth 1 -type d`  
do
grep -s -h "^Pid:[[:space:]][[:digit:]]*" ${i}/status | awk '{printf "\nProcessID=" $2 }' >> out.txt
grep -s -h "^PPid:[[:space:]][[:digit:]]*" ${i}/status | awk '{printf " : Parent_ProcessID=" $2 }' >> out.txt
grep -s -h "avg_time\s:[[:space:]][[:digit:]]*" ${i}/sched | awk '{printf " :  Average_Sleeping_Time=" $2 }' >> out.txt
done
sort -n -k2 -t= out.txt | tee out.txt