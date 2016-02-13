#! /usr/bin/env zsh

find . -iname 'file*' -type f | cut -d '-' -f 1 | uniq | sed 's!.*!echo "Group & : "; cat &\* | sort -n | tail -n1!g' | sh
