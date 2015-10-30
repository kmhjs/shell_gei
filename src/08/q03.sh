#! /usr/bin/env zsh

value=0; arr=(); foreach f g ($(cat -n file* | sort --key=2)) { [ $value = $g ] && arr=($arr $f) || { [ $#arr -ge 2 ] && echo $arr; value=$g; arr=($f) } }
