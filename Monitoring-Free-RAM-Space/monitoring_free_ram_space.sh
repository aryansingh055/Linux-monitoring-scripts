#!/bin/bash

# ----------------------------------------------------------
# Script : Monitoring Free RAM Space
# ----------------------------------------------------------

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=2500

if [[ $FREE_SPACE -lt $TH ]]
then
    echo "WARNING: RAM is Low"
else
    echo "RAM is Sufficient - ${FREE_SPACE} MB"
fi
