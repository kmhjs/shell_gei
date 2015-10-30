#! /usr/bin/env zsh

seq 1 8127 | xargs -n1 -I{} echo 'echo "$((8128 % '{}')) '{}'"' | /bin/bash | egrep '^0' | cut -d' ' -f 2 | xargs | tr ' ' '+' | bc

# とか

seq 1 8127 | xargs -n1 -I{} echo 'echo "$((8128 % '{}')) '{}'"' | bash | sed -n 's/^0 \([0-9]*\)$/\1/p' | xargs | tr ' ' '+' | bc

# オイラーの完全数の定理
# 完全数とbitの関係について : https://t-sv.sakura.ne.jp/column/kanzensu/

echo "ibase=10; obase=2; 8128" | bc | sed 's/^\(1*\)0*/\1/g' | tr -d '\n'  | wc -c | xargs | gfactor | sed 's/^[0-9]*: //' | tr -d '\n' | wc -w | xargs -I{} echo '完全数 (must be 1) '{}

# 同じくでかい数で

echo "ibase=10; obase=2; 14474011154664524427946373126085988481573677491474835889066354349131199152128" | bc | tr -d '\n\\' | sed 's/^\(1*\)0*/\1/g' | tr -d '\n' | wc -c | xargs | gfactor | sed 's/^[0-9]*: //' | tr -d '\n' | wc -w | xargs -I{} echo '完全数 (must be 1) '{}

# 上の答えの場合^1+0+[01]+$を許可するので修正
echo "ibase=10; obase=2; 8128" | bc | tr -d '\n\\' | sed -n 's/^\(1*\)\(0*\)$/[ $(($(echo \1 | wc -c) - $(echo \2 | wc -c))) = 1 ] \&\& echo \1/p' | sh | tr -d '\n' | wc -c | xargs | gfactor | sed -n 's/^[0-9]*:\(.*\)$/\1/p' | tr -d '\n' | wc -w | xargs | sed 's/1/True/;s/0/False/'
echo "ibase=10; obase=2; 14474011154664524427946373126085988481573677491474835889066354349131199152128" | bc | tr -d '\n\\' | sed -n 's/^\(1*\)\(0*\)$/[ $(($(echo \1 | wc -c) - $(echo \2 | wc -c))) = 1 ] \&\& echo \1/p' | sh | tr -d '\n' | wc -c | xargs | gfactor | sed -n 's/^[0-9]*:\(.*\)$/\1/p' | tr -d '\n' | wc -w | xargs | sed 's/1/True/;s/0/False/'