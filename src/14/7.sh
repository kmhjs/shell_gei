#! /usr/bin/env zsh

# 単純に
echo '1/4 + 2/5 + 7/16 - 5/9' | while read s; do echo "scale=10;${s}" | bc; done

# 通分
echo '1/4 + 2/5 + 7/16 - 5/9' | while read s; do echo "scale=30;mom=$(echo $s | sed 's/[0-9]*\/\([0-9]*\)/\1/g' | tr '+-' '*');child=$(echo $s | sed 's/\([0-9]*\)\/\([0-9]*\)/(\1 * (mom \/ \2))/g');child/mom" | bc; done