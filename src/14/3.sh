#! /usr/bin/env zsh

echo 0xaf 0x13 0x0d 0x24 0x58 | xargs -n 1 | while read s; do [ $(printf '%d\n' $s | factor | tr ':' '-' | bc 2>/dev/null) ] && echo $s; done