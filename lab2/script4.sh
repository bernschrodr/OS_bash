#!/bin/bash

for file in $(grep -r -l '^#!/bin/.*' /bin)
do
    grep -Eos "^#!/bin/[[:alnum:]]*" "$file" | sed "s|^|$file |"
done | sort -k 2