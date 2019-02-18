#!/bin/bash
echo $(ip -o addr show up primary scope global | while read -r num dev fam addr rest; do echo ${addr%/*}; done)
