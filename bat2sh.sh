#!/bin/sh
sed -i "s/%\([^%]\+\)%/\$\1/g" *.bat #Variable conversion
sed -i "s/if not defined \([^ ]\+\) /[ -z \"\$\1\" ] \&\& /gI" *.bat
sed -i "s/if defined \([^ ]\+\) /[ -n \"\$\1\" ] \&\& /gI" *.bat
sed -i "s/if not exist \([^ ]\+\) /[ ! -f \$\1 ] \&\& /gI" *.bat
sed -i "s/if exist \([^ ]\+\) /[ -f \$\1 ] \&\& /gI" *.bat
sed -i "s/\\\\/\//gI" *.bat  #path conversion
sed -i "s/\^|/|/gI" *.bat #backslashed pipe conversion
sed -i "s/^rem /# /gI" *.bat #comments conversion
sed -i "s/ rem /# /gI" *.bat #comments conversion
sed -i "s/\"\"/\\\\\"/gI" *.bat #double quotes conversion
