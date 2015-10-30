#! /usr/bin/env zsh

join <(echo * | tr ' ' '\n' | xargs -n1 -I{} sh -c 'cat '{}' | tr " " "+" | bc' | cat -n) <(echo * | tr ' ' '\n' | cat -n) | grep -w 10 | cut -d ' ' -f3 | xargs

# bc
ls | tr ' ' '\n' | xargs -I{} -n1 echo 'cat '{}' | tr " " "+" | sed "s/^/if(/g;s/$/==10){print \"'{}' \";}/g" | bc'| sh
ls | xargs -n1 -I{s} echo 'cat {s} | tr " " "+" | xargs -L1 -I{t} echo "if({t}==10){print \"{s}\";}" | bc' | sh
