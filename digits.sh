#!/bin/bash
sum=0
for num in {1000..2000}; do
    if [[ $num =~ ^[10]+$ ]]; then
	((sum += num))
#	echo $num
    fi
done
echo $sum
