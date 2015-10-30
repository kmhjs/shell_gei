#! /usr/bin/env zsh

seq 10 1000 | factor | grep -B 1 ': [0-9]*$' | grep -v ': [0-9]*$' | grep ':' | cut -d: -f1 | xargs
seq 10 1000 | factor | grep -B1 ': [0-9]*$' | grep -wo '^[0-9]*'
