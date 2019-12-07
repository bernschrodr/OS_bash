#!/bin/bash
let count=$(ps ua | sed -n '/^b3rn/p' | awk '{print $1 ":"  $2}'| tee buf.txt | wc -l )
printf '%s\n' $count
cat buf.txt
rm buf.txt