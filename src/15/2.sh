#! /usr/bin/env zsh

# Wrong!
echo * | tr ' ' '\n' | sed '/^file\..*[1-9]00$/d;/^file\.[1-9]$/d;/^file\.[1-9]0$/d' | xargs | xargs rm -f

# Just pattern match
seq 1 10000 | egrep -v '^(.|.0|.*00)$' | xargs echo "file."{}
