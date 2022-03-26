#!/bin/sh

printf "%s %s" "" "$(df -h "/mnt" | awk ' /[0-9]/ {print $3 "/" $2}')"