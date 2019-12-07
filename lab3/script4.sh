#!/bin/bash
rm out4.txt
for i in `find /proc -maxdepth 1 -type d`  
do
printf '%s' $i | awk -F "/" '{printf "\n" $(NF) " : "}' >> out4.txt
grep -h -s '.*' ${i}/statm | awk '{printf $2/$3}' >> out4.txt

done