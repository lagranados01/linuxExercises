#!/bin/bash

rm -rf five
mkdir five

#Outer loop
for i in {1..5}; do
    mkdir "five/dir$i"

    #Inner loop
    for j in {1..4}; do
        file="five/dir$i/file$j"

        #Create file and write  number of lines
        for k in $(seq $j); do
            echo "$j" >> "$file"
        done
    done
done
