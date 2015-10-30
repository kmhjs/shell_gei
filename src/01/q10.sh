#! /usr/bin/env zsh

cat <(cat teams | xargs | sed 's/^/,/;s/ /,/g') <(cat teams | sed 's/$/,,,/')
