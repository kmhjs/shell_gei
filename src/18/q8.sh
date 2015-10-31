#! /usr/bin/env zsh

uniq -d <(for p ($(echo 'echo '$(cat input | sed 's/./{0..9}/g') | zsh)); do cat input | grep -o $p ; done)
