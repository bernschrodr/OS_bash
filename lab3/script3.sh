#!/bin/bash 
ps ua | awk '{print $1 " " $11}' | sed 1d | sed "/[[:space:]]\/bin\//d" | awk '{print $2}' > out