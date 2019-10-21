#!/bin/bash
count=$(ps ua | wc -l)
user_pid=$(ps ua | sed  -n '/^bern/p' | awk '{print $1 ":"  $2}')
printf '%s\n%s\n' $user_pid $count
