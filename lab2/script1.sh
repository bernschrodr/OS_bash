#!/bin/bash

sed -n '/^ACPI.*/p' /var/log/* > errors.log 2>/dev/null
sed -n '/\/.*\//p' errors.log