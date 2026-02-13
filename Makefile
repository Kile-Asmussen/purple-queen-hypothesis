
commit: all tidy

all: package.json purple-queen-hypothesis-icons.json purple-queen-hypothesis-theme.json purple-queen-hypothesis-custom.css

clean: tidy
	rm -f package.json
	rm -f purple-queen-hypothesis-icons.json
	rm -f purple-queen-hypothesis-theme.json
	rm -f purple-queen-hypothesis-custom.css

tidy:
	make -C ./theme/ clean
	make -C ./icons/ clean
	make -C ./css/ clean

package.json: package.json5
	fixjson package.json5 > package.json

purple-queen-hypothesis-icons.json: ./icons/pack.json
	cp ./icons/pack.json purple-queen-hypothesis-icons.json

./icons/pack.json:
	make -C ./icons/ all

purple-queen-hypothesis-custom.css: ./css/extras.out.css
	cp ./css/extras.out.css purple-queen-hypothesis-custom.css
	
./css/extras.out.css:
	make -C ./css/ all

purple-queen-hypothesis-theme.json: ./theme/theme.json
	cp ./theme/theme.json purple-queen-hypothesis-theme.json

./theme/theme.json:
	make -C ./theme/ all