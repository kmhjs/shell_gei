#! /usr/bin/env zsh

cat Q6 | sed 's!.*!<(echo "&" | tr "　" "\\n" | cat -n - | xargs -L1 | sed "s/^\\([^ ]*\\) \\(.*\\)$/\\2 \\1/g" | LC_ALL=C sort -f)!' | tr '\n' ' ' | sed 's/^/join /' | zsh
