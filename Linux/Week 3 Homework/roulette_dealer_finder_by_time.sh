#!/bin/bash/
awk '{print $1,$2,$5,$6}' $1
grep -E $2 $1

