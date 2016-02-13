#! /usr/bin/env zsh

echo ${1} ${2} | tr ' ' '\n' | sed 's!.*!<(echo & | gfactor | sed "s/^.*: //g" | tr " " "\\n")!' | tr '\n' ' ' | sed 's/^/comm -12 /g' | zsh | tr '\n' '*' | sed 's/\*$//' | bc
