#! /usr/bin/env zsh

# 簡単です とは・・・
seq 0 31 | xargs -I{} echo 'echo "obase=2;ibase=10;'{}'" | bc' | sh | while read s; do echo $(seq 0 $((5 - $#s)) | xargs | tr '[0-9]' '0' | tr -d ' ')$s | sed 's/^0//g' | sed 's/\(.\)/\1 /g' | sed 's/\([01]\) \([01]\) \([01]\) \([01]\) \([01]\)/echo "$((\1 * 1)) $((\2 * 2)) $((\3 * 3)) $((\4 * 4)) $((\5 * 5))"/g' | sh | sed 's/1/a/g;s/2/b/g;s/3/c/g;s/4/d/g;s/5/e/g' | tr -d ' 0' | sed 's/^/{/g;s/$/}/g;s/\([abcde]\)/\1,/g;s/,}/}/g' | tr '\n' ','; done