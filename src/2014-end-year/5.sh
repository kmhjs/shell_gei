#! /usr/bin/env zsh

seq 0 10000 | xargs -n1 -P0 -I{} echo '(((-1) ^ '{}') / (2 * '{}' + 1))' | tr '\n' '+' | sed 's/^/scale=10; 4*(/g;s/+$/)/g' | bc

# OR

seq 0 10000 | xargs -n1 -P0 -I{} echo '(((-1) ^ '{}') / (2 * '{}' + 1))' | tr -d ' ' | xargs -n2 | tr ' ' '+' | sed 's/^/scale=10000; 4*(/g;s/$/)/g' | bc | sed 's/\\$/:/g;s/\([0-9]\)$/\1+/g' | tr -d '\n:' | tr '+' '\n' | sed 's/^/(/g;s/$/)+/g' | tr -d '\n' | sed 's/+$/Q/g' | tr 'Q' '\n' | bc | tr -d '\n\\'