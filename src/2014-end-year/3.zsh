echo "${$(echo {1..50})// /\n}" | sed 's|^|$((1.0 / ($(echo "${$(echo {1..|g;s|$|})// /*}"))))|g' | tr '\n' '+' | sed 's/+$//g;s/^/echo $((1+/g;s/$/))/g' | zsh