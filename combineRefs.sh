#/bin/bash

# Author: John W. Lovell
# Date: 5/4/2021
# Usage: ./combineRefs.sh out/us/ServiceDocs/ "*API_US.yaml"
cd $1

shopt -s nullglob
for i in $2; do
  echo "$i"
  swagger-cli bundle $i -t yaml -o $i
done