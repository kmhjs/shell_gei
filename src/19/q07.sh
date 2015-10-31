#! /usr/bin/env zsh

echo '#! /usr/bin/env zsh\n\n[[ $SHLVL -lt 100 ]] && { $d/d.sh } || echo $SHLVL' > $d/d.sh && chmod +x $d/d.sh && $d/d.sh && rm -f $d/d.sh
echo '#! /usr/bin/env bash\n\n[[ $SHLVL -lt 100 ]] && ~/d.sh || echo $SHLVL' > ~/d.sh && chmod +x ~/d.sh && ~/d.sh && rm -f ~/d.sh
