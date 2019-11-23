#!/bin/bash
rm out.txt
for i in `find /proc -maxdepth 1 -type d`  
do
printf '%s' $i | awk -F "/" '{printf "\n" $(NF) " : "}' >> out.txt
grep -h -s '.*' ${i}/statm | awk '{printf $2/$3}' >> out.txt

done