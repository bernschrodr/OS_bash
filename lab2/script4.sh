#!/bin/bash

for file in $(grep -r -l '^#!/bin/.*' /bin)
do
    grep -Eos "^#!/bin/[[:alnum:]]*" "$file" | sed "s|^|$file |"
done | sort -k2 | uniq -c -f1 | sort -k1 -r -n | sed "1q" | awk '{print $2 " " $3}'