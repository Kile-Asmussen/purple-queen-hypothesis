all: theme.json

clean:
	rm -f theme.json
	rm -f palette.json
	rm -f colors.json
	rm -f tokenColors.json

theme.json: colors.json tokenColors.json theme.json5 theme.jq
	fixjson theme.json5 | jq -f theme.jq --slurpfile colors colors.json --slurpfile tokenColors tokenColors.json > theme.json

colors.json: unnest.jq palette.jq palette.json
	fixjson colors.json5 | jq -f unnest.jq | jq -f palette.jq --slurpfile palette palette.json > colors.json

tokenColors.json: tokenColors.json5 palette.jq palette.json
	fixjson tokenColors.json5 | jq -f palette.jq --slurpfile palette palette.json > tokenColors.json

palette.json: ../palette.json5
	fixjson ../palette.json5 > palette.json