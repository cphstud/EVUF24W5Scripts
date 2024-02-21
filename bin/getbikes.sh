#!/bin/bash

#/home/ubuntu/bikes/<url>-<dato-og-tid>.json
endpoint=$1
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
folder="/home/ubuntu/evubikes/data/"
filename="$endpoint-$timestamp".json

echo $folder$filename

curl -k "https://api.citybik.es/v2/networks/$endpoint" -s | python3 -mjson.tool > $folder$filename


