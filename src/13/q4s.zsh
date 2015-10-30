#! /usr/bin/env zsh

ls | while read s; do d=`date -d $s '+%w'`; [ ! -d $d ] && mkdir $d; mv $s ./$d/$s; done