#! /usr/bin/env zsh

grep 'x' cross | sed 's/^\(.\)\(.*\)$/echo "\2" | sed "s!x!\1!"/' | sh | sed 's/.*/paste  <(echo "&" | grep . -o) <(cat cross | head -n1 | grep . -o | grep -v _)/' | zsh | grep -v _ | xargs -L1 | tr ' ' '-'
