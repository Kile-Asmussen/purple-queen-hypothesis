all: extras.css

extras.css: palette.css effects.css
	cat palette.css effects.css > extras.css

palette.css: ../palette.json5 palette.jq
	fixjson ../palette.json5 | jq -f palette.jq --raw-output > palette.css
