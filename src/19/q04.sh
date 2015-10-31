#! /usr/bin/env zsh

cat q4.sh | xargs | tr ' ' '>' | sed "s/$(echo 'すっとこどっこい' | sed 's/./&[>]*/g;s/\[\>\]\*$//g')/朴念仁/" | tr '>' '\n'
