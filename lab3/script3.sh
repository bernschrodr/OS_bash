#!/bin/bash 
ps ua | awk '{print $1 " " $11}' | grep -h -s "bern\s" | sed -n "/\s\/bin\//p" | awk '{print $2}' > out