#! /usr/bin/env zsh

cat Q3 | tr '\n' ' ' | awk -F' ' 'BEGIN { even[0] = 0; odd[0] = 0; } { for (i = 1; i <= NF; i++) { if ($i % 2 == 0) { even[length(even)] = $i } else { odd[length(odd)] = $i} } } END { for (i = 1; i < length(even); i++) { print even[i], odd[NF / 2 - i + 1]; } }'
