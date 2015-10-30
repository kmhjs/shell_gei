#! /usr/bin/env zsh

a=1 && seq 2 100 | while read s; do a=$(echo "${a} * ${s}" | bc); done && echo $a | tr -d '\n\\'

# とか

seq 100 | tr '\n' '*' | sed 's/\*$/\n/g' | bc | tr -d '\n\\'

# とか