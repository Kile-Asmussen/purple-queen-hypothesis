#! /usr/bin/env bash

fixjson names.json5 > names.json
fixjson colors.json5 | jq -f unnest.jq | jq -f mapNames.jq --slurpfile names names.json > colors.json
fixjson tokenColors.json5 | jq -f mapNames.jq --slurpfile names names.json > tokenColors.json
fixjson theme.json5 | jq -f theme.jq --slurpfile colors colors.json --slurpfile tokenColors tokenColors.json > theme.json
jq --raw-output -f cssColors.jq names.json > cssColors.css
