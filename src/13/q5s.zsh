#! /usr/bin/env zsh

find . -type f | while read s; do mv $s `echo $s:t | tr -d '[0-9]'`; done