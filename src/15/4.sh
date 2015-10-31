#! /usr/bin/env zsh

# -c : Counts number of lines matched to regexp
grep -c 'set -e' $(grep -L '#!/bin/sh' /etc/**/* 2>/dev/null) 2>/dev/null | cut -d: -f2 | sed 's/^[1-9]*$/1/g' | sort -n | uniq -c
