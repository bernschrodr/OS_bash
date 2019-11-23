#!/bin/bash
let count=$(ps ua | sed -n '/^bern/p' | awk '{print $1 ":"  $2}'| tee buf.txt | wc -l )
printf '%s\n' $count
cat buf.txt
rm buf.txt