#!/bin/bash
cat ${HOME}/.bash_history | sed -n 's/\([^ ]*\) .*$/\1/p' | sort | uniq -c | sort -rg | sed -n '1,10p'
