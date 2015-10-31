#! /usr/bin/env zsh

# 出た答えを参考に
ps af | grep -B2 ps | grep -v -e -B2 | grep pts

# これ環境に結構依存するよな・・・
