#!/bin/bash

if [[ $# -ne 2 ]]; then # Recall: "-ne" checks integer inequality.
echo "usage: $0 <word> <n>" 1>&2 # write error message to stderr (below)
exit 0
fi
