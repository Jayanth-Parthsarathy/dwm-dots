#!/bin/sh

capacity=$(acpi -b | awk '{print $4}' | tr -d ',')

echo "BAT: ${capacity}%"

