#! /usr/bin/env zsh

cat /etc/passwd | egrep '(/bash|/sh)$' | sed 's!^.*/\([a-z]*\)$!\1!g' | sort | uniq -c
