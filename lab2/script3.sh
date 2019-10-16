#!/bin/bash
grep -r -o -E "\b[[:alnum:]]+@[[:alnum:]]+\.[[:alpha:]]+\b" /etc/ > emails.lst

