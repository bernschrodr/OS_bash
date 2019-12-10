#!/bin/bash 
ps xua | awk '{print $1 " " $11 " " $2}' | sed -n "/\s\/sbin\//p" | awk '{print $3}' > out