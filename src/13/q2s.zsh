#! /usr/bin/env zsh

find . | tr -d './[0-9]' | sort | uniq -c | sed 's/^[^0-9]*//g' | while read a b; do [ $b ] && echo $b $[a - 1]; done