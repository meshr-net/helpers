#!/bin/sh
files="*.bat"
sed -i "s/%\([^%]\+\)%/\$\1/g" $files #Variable conversion
sed -i "s/if not defined \([^ ]\+\) /[ -z \"\$\1\" ] \&\& /gI" $files
sed -i "s/if defined \([^ ]\+\) /[ -n \"\$\1\" ] \&\& /gI" $files
sed -i "s/if not exist \([^ ]\+\) /[ ! -f \$\1 ] \&\& /gI" $files
sed -i "s/if exist \([^ ]\+\) /[ -f \$\1 ] \&\& /gI" $files
sed -i "s/\^|/|/gI" $files  #path conversion
sed -i "s/^rem /# /gI" $files
sed -i "s/ rem /# /gI" $files
