#! /usr/bin/env zsh

# grep -L foo * : fooを含まないファイルを抽出
grep -L 1 *

# Other
ls | xargs -n1 -I{} echo '[ -z "$(cat '{}' | grep 1)" ] && echo '{}  | zsh