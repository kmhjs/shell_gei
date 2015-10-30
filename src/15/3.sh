#! /usr/bin/env zsh

cat text1 | tr ' ' '\n' | sed -n '/-v/p;/-f/p;/^awk/p' | sort | uniq -c

cat text1 | tr ' ' '\n' | egrep '(-f|-v|^awk)' | sort | uniq -c

# Ans
# -eでオプションにしなくていいんだって
# -wでword検索
# -oでマッチ文字列のみ出力
cat text1 | grep -wo -e awk -e -v -e -f | sort | uniq -c
