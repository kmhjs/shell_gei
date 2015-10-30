#! /usr/bin/env zsh

# :: の処理が曖昧だったため中途半端
cat ipv6 | while read sq; do echo $sq | sed 's/::/:0000:0000:/g' |sed 's/:/\n/g' | while read s; do [ $show ] && echo -n ":"; echo -n "${(l.$((4-$#s))..0.)}${s}"; show=1; done; echo ""; unset show; done
