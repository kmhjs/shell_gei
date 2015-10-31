#! /usr/bin/env zsh

seq 1 50 | sed 's/\([0-9]*\)/echo $(seq 1 \1) | tr " " "*"/g' | sh | sed 's/^/(1.0 \/ (/g;s/$/))/g' | tr '\n' '+' | sed 's/^/scale=10;1+/;s/+$//g' | bc