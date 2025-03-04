#!/bin/bash

#Usage Statement
if [[ $# -lt 1 || $# -gt 2 ]]; then
    echo "usage: $0 <column number>, [file name]" 1>&2
    exit 1
fi

#Grab Input
column=$1
file=$2

if [[ -z "$file" ]]; then
    input_stream="/dev/stdin"
else
    input_stream="$file"
fi

#Loop for the mean
cut -d, -f$column "$input_stream" | tail -n +2 | {
    sum=0
    count=0

    while read -r value; do
        sum=$(echo "$sum + $value" | bc)
        count=$((count + 1))
    done

    mean=$(echo "scale=2; $sum / $count" | bc)
    echo "Mean: $mean"
}
