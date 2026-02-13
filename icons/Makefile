
all: pack.json

clean:
	rm -f pack.json
	rm -f iconDefinitions.json

pack.json: pack.json5 pack.jq iconDefinitions.json
	fixjson pack.json5 | jq -f pack.jq --slurpfile iconDefinitions iconDefinitions.json > pack.json

iconDefinitions.json: iconDefinitions.jq 
	ls *.svg | jq -f iconDefinitions.jq --null-input --raw-input > iconDefinitions.json