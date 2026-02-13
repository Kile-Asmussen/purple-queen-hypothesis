
all: cssColors.css
	cp theme.json purple-queen-hypothesis.json

clean:
	rm theme.json
	rm names.json
	rm colors.json
	rm tokenColors.json
	rm cssColors.css

theme.json: names.json colors.json tokenColors.json theme.json5 theme.jq
	fixjson theme.json5 | jq -f theme.jq --slurpfile colors colors.json --slurpfile tokenColors tokenColors.json > theme.json

colors.json: names.json unnest.jq mapNames.jq
	fixjson colors.json5 | jq -f unnest.jq | jq -f mapNames.jq --slurpfile names names.json > colors.json

tokenColors.json: names.json tokenColors.json5 mapNames.jq
	fixjson tokenColors.json5 | jq -f mapNames.jq --slurpfile names names.json > tokenColors.json

names.json: names.json5
	fixjson names.json5 > names.json

cssColors.css: names.json cssColors.jq
	jq --raw-output -f cssColors.jq names.json > cssColors.css