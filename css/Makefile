all: extras.out.css

clean:
	rm -f extras.out.css

extras.out.css: palette.jq effects.css ../palette.json5
	fixjson ../palette.json5 | jq -f palette.jq --raw-output | cat - effects.css > extras.out.css

