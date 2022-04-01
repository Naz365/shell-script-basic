#!/bin/bash
while getopts n: flag
do
  case "${flag}" in
    n)  filename=${OPTARG};;
  esac
done

curl --request GET \
        --url 'https://coingecko.p.rapidapi.com/coins/markets?vs_currency=bdt&per_page=500&order=market_cap_desc' \
        --header 'x-rapidapi-host: coingecko.p.rapidapi.com' \
        --header 'x-rapidapi-key: 6a4530d065mshedf19778f54a168p17b73djsncd95f0fe83be' > data.json

if [[ $filename ]]
then
  cat data.json | jq -r '.[] | [.symbol, .current_price] | @csv' > $filename
  echo "Your data is exported in $filename"
else
  cat data.json | jq '. | map([.symbol, .current_price])'
fi

rm data.json
