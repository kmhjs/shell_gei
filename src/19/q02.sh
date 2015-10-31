#! /usr/bin/env zsh

echo 1 4 | sed 's!^\([0-9]*\) \([0-9]*\)$!seq \1 \2; seq $(echo \1 $((\2 - 1))) | xargs | rev!' | sh | xargs -n1
echo 1 4 | sed 's!^\([0-9]*\) \([0-9]*\)$!echo {\1..\2} {\2..\1}!' | zsh | xargs -n1 | uniq
