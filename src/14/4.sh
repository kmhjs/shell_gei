#! /usr/bin/env zsh

echo "e89fb9e3818ce9a39fe381b9e3819fe38184" | sed 's/\(..\)/%\1/g' | nkf --url-input -Ww