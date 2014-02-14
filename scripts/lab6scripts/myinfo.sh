#!/bin/bash
ramgb=$(echo "scale=2; $(free | sed -n '2s/[^0-9]*\([0-9]*\).*/\1/p')/(1024.0*1024.0)" | bc)
usedgb=$(echo "scale=2; $(free | sed -n '2s/[^0-9]*[0-9]*[^0-9]*\([0-9]*\).*/\1/p')/(1024*1024)" | bc)
#echo $ramgb
#echo $usedgb
freepe=$(echo "scale=2; (($ramgb-$usedgb)/$ramgb)*100" | bc)
echo "Today is $(date +%A), $(date +%d)th $(date +%B), $(date +%Y)"
echo "There are X1 weeks Y1 days and Z1 hours left for the birthday of Dinesh
There are X2 weeks Y2 days and Z2 hours left for the birthday of Nitish
There are X3 weeks Y3 days and Z3 hours left for the birthday of Mahindar
Thank you for asking, ${USER}
Your system has been running for $(if [ -n $(uptime | sed -n 's/.* up \([0-9]*\) days,  .*$/\1/p') ]; then echo $(uptime | sed -n 's/.* up \([0-9]*\) days,  .*$/\1/p'); else echo "0"; fi) days, $(uptime | sed -n 's/[^:]*:[^:]*:[^:]*\(..:..\).*$/\1/p' | sed -n 's/^ /0/p') hours.
The current disk on which your home folder is located is $(df | sed -n '2s/^\([^ ]*\).*$/p') and is $(df | sed -n '2s/^.*\(..\)%.*$/\1/p')% full
You are running $(lsb_release -c -s) and $(lsb_release -r -s) with Kernel $(uname -r)
Your machine has $ramgb GB RAM. Of which $freepe% is in use.
This script has $(cat ./scripts/lab6scripts/myinfo.sh | wc -w) words, $(cat ./scripts/lab6scripts/myinfo.sh | wc -l) lines and $(($(cat ./scripts/lab6scripts/myinfo.sh | wc -w)-$(cat ./scripts/lab6scripts/myinfo.sh | wc -l))) characters (without counting whitespace)"
