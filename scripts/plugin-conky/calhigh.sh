#!/bin/zsh

sedQueryStart='s? '
sedQueryEnd=' ?$\{color ebdbb2\}&$\{color 504945\}?' 
sedQuery="$sedQueryStart$(date "+%-d")$sedQueryEnd" 

cal | sed -e 's?.*?      &?g' -e $sedQuery
