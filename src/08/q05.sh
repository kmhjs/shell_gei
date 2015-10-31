#! /usr/bin/env zsh

foreach f ($(echo 000001111111111001010 | sed 's/10/1 0/g;s/01/0 1/g')) { echo -n "$f[1]$( t=$(($(echo $f | wc -c) - 1)); [ $t -ge 2 ] && echo $t || echo "" ) " }; echo ""
