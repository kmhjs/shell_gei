#! /usr/bin/env zsh

cat <(cat a | egrep -v "($(cat b | xargs | tr ' ' '|'))" | sed 's/^/a /') <(cat b | egrep -v "($(cat a | xargs | tr ' ' '|'))" | sed 's/^/b /') <(cat a b | sort | uniq -d | sed 's/^/c /')
