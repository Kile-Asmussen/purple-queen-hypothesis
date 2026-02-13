
all: iconPack.json

iconPack.json: iconPack.json5 iconPack.jq iconDefinitions.json
	fixjson iconPack.json5 | jq -f iconPack.jq --slurpfile iconDefinitions iconDefinitions.json > iconPack.json

iconDefinitions.json: iconDefinitions.jq 
	ls *.svg | jq -f iconDefinitions.jq --null-input --raw-input > iconDefinitions.json