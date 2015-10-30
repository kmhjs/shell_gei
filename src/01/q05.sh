#! /usr/bin/env zsh

for i ({1..15}){s=${#[i%3==0]+fizz}${#[i%5==0]+buzz};echo ${s:-$i}}
