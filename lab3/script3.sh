#!/bin/bash 
ps ua | awk '{print $1 " " $11 " " $2}' | grep -h -s "b3rn\s" | sed -n "/\s\/bin\//p" | awk '{print $3}' > out