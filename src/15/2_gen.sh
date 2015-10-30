#! /usr/bin/env zsh

seq 1 10000 | xargs -I@ touch file.@
