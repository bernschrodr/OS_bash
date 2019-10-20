#!/bin/bash
grep -r -o -E -h -s "\b[[:alnum:]]+@[[:alnum:]]+\.[[:alpha:]]+\b" /etc/ > emails.lst

