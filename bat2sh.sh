#!/bin/sh
files="*.bat"
sed -i.bak "s/%\([^%]\+\)%/\$\1/g" $files #Variables conversion
sed -i "s/if not defined \([^ ]\+\) /[ -z \"\$\1\" ] \&\& /gI" $files
sed -i "s/if defined \([^ ]\+\) /[ -n \"\$\1\" ] \&\& /gI" $files
sed -i "s/if not exist \([^ ]\+\) /[ ! -f \$\1 ] \&\& /gI" $files
sed -i "s/if exist \([^ ]\+\) /[ -f \$\1 ] \&\& /gI" $files
sed -i "s/if not \([^ ]\+\) /[ ! \1 ] \&\& /gI" $files
sed -i "s/if \([^ ]\+\) /[ \1 ] \&\& /gI" $files
sed -i "s/\\\\/\//gI" $files  #path conversion
sed -i "s/\^|/|/gI" $files #backslashed pipe conversion
sed -i "s/\brem /# /gI" $files #comments conversion
sed -i "s/\"\"/\\\\\"/gI" $files #double quotes conversion
sed -i "s/\bnul\b/\/dev\/null/gI" $files # 'nul' conversion
sed -i "s/\bset //gI" $files # 'set' conversion
sed -i "s/\btype /cat /gI" $files # 'type' conversion
sed -i "s/\bfind /grep /gI" $files # 'find' conversion
