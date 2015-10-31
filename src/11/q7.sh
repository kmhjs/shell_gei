#! /usr/bin/env zsh

echo 2001:db8:20:3:1000:100:20:3 | sed 's/:/\n/g' | while read s; do [ $show ] && echo -n ":"; echo -n "${(l.$((4-$#s))..0.)}${s}"; show=1; done; echo ""; unset show
