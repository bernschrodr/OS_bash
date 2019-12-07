#!/bin/bash

ps -A -o pid | tail -n +2 | gawk '{f1="/proc/"$1"/statm"; getline str<f1; split(str, a); print $1, ":", a[2]-a[3]}' |
sort -r -n -t ":" -k 2 > out4.txt