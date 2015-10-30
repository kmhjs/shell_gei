#! /usr/bin/env zsh

foreach f (file*); do [ $(cat $f) = 'hoge' ] && mv $f a || mv $f b ; done