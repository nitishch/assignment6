#!/bin/bash
ramgb=$(echo "scale=2; $(free | sed -n '2s/[^0-9]*\([0-9]*\).*/\1/p')/(1024.0*1024.0)" | bc)
usedgb=$(echo "scale=2; $(free | sed -n '2s/[^0-9]*[0-9]*[^0-9]*\([0-9]*\).*/\1/p')/(1024*1024)" | bc)
#echo $ramgb
#echo $usedgb
#date=$(date +%d)
#month=$(date +%m)
year=$(date +%Y)
#hour=$(date +%H)
#minutes=$(date +%M)
#presenttime
dineshsec=$(($(date +%s -d ${year}0724)-$(date +%s -d today)))
nitishsec=$(($(date +%s -d ${year}0419)-$(date +%s -d today)))
mahisec=$(($(date +%s -d ${year}0808)-$(date +%s -d today)))
if [ $dineshsec -lt 0 ]
then
dineshsec=$(($(date +%s -d $((${year}+1))0724)-$(date +%s -d today)))
fi
if [ $nitishsec -lt 0 ]
then
nitishsec=$(($(date +%s -d $((${year}+1))0419)-$(date +%s -d today)))
fi
if [ $mahisec -lt 0 ]
then
mahisec=$(($(date +%s -d $((${year}+1))0808)-$(date +%s -d today)))
fi

freepe=$(echo "scale=2; (($ramgb-$usedgb)/$ramgb)*100" | bc)
echo "Today is $(date +%A), $(date +%d)th $(date +%B), $(date +%Y)"
echo "Your system has been running for $(if [ $($(uptime | sed -n 's/.* up \([0-9]*\) days,  .*$/\1/p') | wc -w) -ne 0 ]; then echo $(uptime | sed -n 's/.* up \([0-9]*\) days,  .*$/\1/p'); else echo "0"; fi) days"
echo ", $(uptime | sed -n 's/[^:]*:[^:]*:[^:]*\(..:..\).*$/\1/p' | sed 's/^ /0/p') hours."
echo "The current disk on which your home folder is located is $(df | sed -n '2s/^\([^ ]*\).*$/\1/p') and is $(df | sed -n '2s/^.*\(..\)%.*$/\1/p')% full
You are running $(lsb_release -c -s) and $(lsb_release -r -s) with Kernel $(uname -r)
Your machine has $ramgb GB RAM. Of which $freepe% is in use.
This script has $(cat ./scripts/lab6scripts/myinfo.sh | wc -w) words, $(cat ./scripts/lab6scripts/myinfo.sh | wc -l) lines and $(($(cat ./scripts/lab6scripts/myinfo.sh | wc -w)-$(cat ./scripts/lab6scripts/myinfo.sh | wc -l))) characters (without counting whitespace)"
