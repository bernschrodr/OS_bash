#!/bin/bash
while [[ "$str" != "q" ]]
do
read str
res+=$str
echo $str
done
echo $res
