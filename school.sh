#!/bin/bash
wget http://pages.stat.wisc.edu/~jgillett/DSCP/linux/Property_Tax_Roll.csv

sum=$(cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d ',' -f 7 | { sum=0; while read n; do sum=$(($sum + $n)); done; echo $sum; })

house_count=$(cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d ','	-f 7 | wc -l)

echo "Sum: '$sum'"
echo "House Count: '$house_count'"

echo "scale=3; $sum / $house_count" | bc
