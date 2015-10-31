#! /usr/bin/env zsh

cat score | sed 's/^\([0-9]*\) \(.*\)/\2 \1/g'
