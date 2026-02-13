
all: package.json purple-queen-hypothesis-icons.json purple-queen-hypothesis-theme.json

package.json: package.json5
	fixjson package.json5 > package.json

purple-queen-hypothesis-icons.json: iconPack.json5
	fixjson iconPack.json5 > purple-queen-hypothesis-icons.json

purple-queen-hypothesis-theme.json:
	cd theme
	make theme.json
	cp theme.json