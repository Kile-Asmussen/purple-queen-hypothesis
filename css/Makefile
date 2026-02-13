all: extras.css

extras.css: colors.css effects.css

palette.css: ../palette.json5
	fixjson ../palette.json5 | jq -f cssColors.jq --raw-output > palette.css
