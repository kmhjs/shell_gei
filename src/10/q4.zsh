#! /usr/bin/env zsh

cat hoge | perl -pe 's/\n//g' | sed 's/\(\w\)/\1\n/g' | sort | uniq -c | grep 3 | perl -pe 's/^ *//g' | cut -d ' ' -f 2