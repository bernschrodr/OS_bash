# !/bin/bash

res=2
while [[ "$res" -ne 0 ]]
do
read inp
res=inp%2
let count=$count+1
done 
echo $count
