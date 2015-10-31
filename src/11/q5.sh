#! /usr/bin/env zsh

# 改行処理だけはゆるして・・・
cat csv | perl -pe 's/\n/,/g;s/\"//g' | sed 's/,$//g;s/,/+/g' | sed 's/+-/-/g' | perl -pe 's/$/\n/g' | bc
