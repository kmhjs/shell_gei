#! /usr/bin/env zsh

# これがわかんなくてこたえみた
seq 100 | sed '5~5s/.*/Buzz/;3~3s/[0-9]*/Fizz/'