#! /usr/bin/env zsh

cat 1.in | egrep 'オ.ン' | sort | uniq -i | cut -d ' ' -f 1 | uniq -d
