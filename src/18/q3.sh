#! /usr/bin/env zsh

echo '@cat '{a,b,c}' | xargs | tr " " "+" | bc' | tr '@' '\n'  | sh
