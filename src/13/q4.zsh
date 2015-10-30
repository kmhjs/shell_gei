#! /usr/bin/env zsh

ls | while read s; do d=$(date -d $s '+%w' | sed 's/0/Sun/g;s/1/Mon/g;s/2/Tue/g;s/3/Wed/g;s/4/Thu/g;s/5/Fri/g;s/6/Sat/g'); [ ! -d $d ] && mkdir $d; mv $s ./$d/$s; done