#! /usr/bin/env zsh

# 一応ね...
curl http://ja.wikipedia.org/wiki/%E6%97%A5%E6%9C%AC%E3%81%AE%E5%B1%B1%E4%B8%80%E8%A6%A7_%28%E9%AB%98%E3%81%95%E9%A0%86%29 > height

cat height | tr -d '\n' | sed 's/<table/\n<table/g;s/<\/table>/<\/table>\n/g' | grep '<td>1</td>' | sed 's/<tr>/\n<tr>/g;s/<\/tr>/<\/tr>\n/g' | grep -v 'table' | sed 's/<[^>]*>/ /g;s/\. /\./g;s/ *（ */（/g;s/ *）/）/g' | column -x -t