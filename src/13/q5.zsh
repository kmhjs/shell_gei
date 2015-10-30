#! /usr/bin/env zsh

find . -type f | while read s; do mv $s `echo $s | tr -d './[0-9]' | sed 's/.\(.\)/\1/g'` > /dev/null 2>&1; done