#!/bin/bash
echo "Today is $(date +%A), $(date +%d)th $(date +%B), $(date +%Y)"
echo "There are X1 weeks Y1 days and Z1 hours left for the birthday of Dinesh
There are X2 weeks Y2 days and Z2 hours left for the birthday of Nitish
There are X3 weeks Y3 days and Z3 hours left for the birthday of Mahindar
Thank you for asking, $(whoami)
Your system has been running for $(uptime | sed -n 's/.* up \([0-9]*\) days,  .*$/\1/p') days, $(uptime | sed -n 's/.*days,  \([0-9:]*\).*$/\1/p') hours.
The current disk on which your home folder is located is <diskdevicename> and is X5% full
You are running $(lsb_release -c -s) and $(lsb_relase -r -s) with Kernel $(uname -r)
Your machine has X6 GB RAM. Of which X7% is in use.
This script has $(cat ./scripts/lab6scripts/myinfo.sh | wc -w) words,  $(cat ./scripts/lab6scripts/myinfo.sh | wc -l)lines and $(($(cat ./scripts/lab6scripts/myinfo.sh | wc -w)-$(cat ./scripts/lab6scripts/myinfo.sh | wc -l))) characters (without counting whitespace)"
