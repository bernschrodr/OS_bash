#!/bin/bash
ps ua | awk '{print $2 " " $9}' | sort -k2 -r | sed -n '2p' | awk '{print $1}'