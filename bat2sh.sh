#!/bin/sh
sed -i "s/%\([^%]\+\)%/\$\1/g" *.bat #Variable conversion
sed -i "s/if not defined \([^ ]\+\) /[ -z \"\$\1\" ] \&\& /gI" *.bat
sed -i "s/if defined \([^ ]\+\) /[ -n \"\$\1\" ] \&\& /gI" *.bat
sed -i "s/if not exist \([^ ]\+\) /[ ! -f \$\1 ] \&\& /gI" *.bat
sed -i "s/if exist \([^ ]\+\) /[ -f \$\1 ] \&\& /gI" *.bat
sed -i "s/\^|/|/gI" *.bat  #path conversion
sed -i "s/^rem /# /gI" *.bat
sed -i "s/ rem /# /gI" *.bat
