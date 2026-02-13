
all: package.json purple-queen-hypothesis-icons.json purple-queen-hypothesis-theme.json purple-queen-hypothesis-custom.css

clean: clean-css clean-icons clean-theme
	rm -f package.json
	rm -f purple-queen-hypothesis-icons.json
	rm -f purple-queen-hypothesis-theme.json
	rm -f purple-queen-hypothesis-custom.css

clean-css:
	cd css
	make clean

clean-icons:
	cd icons
	make clean

clean-theme:
	cd theme
	make clean

package.json: package.json5
	fixjson package.json5 > package.json

purple-queen-hypothesis-icons.json: ./icons/pack.json
	cp ./icons/pack.json purple-queen-hypothesis-icons.json

./icons/pack.json:
	cd icons
	make all

purple-queen-hypothesis-custom.css: ./css/extras.css
	cp ./css/extras.css purple-queen-hypothesis-custom.css
	
./css/extras.css:
	cd css
	make all

purple-queen-hypothesis-theme.json: ./theme/theme.json
	cp ./theme/theme.json purple-queen-hypothesis-theme.json

./theme/theme.json:
	cd theme
	make all