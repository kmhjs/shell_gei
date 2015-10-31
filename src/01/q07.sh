#! /usr/bin/env zsh

diff <(cat q7in | sort -n) <(echo {1..10} | xargs -n1) | grep '>' | cut -d' ' -f2
