
.PHONY: all watch main.js

all: main.js

watch:
	watchman watch .
	watchman -- trigger *.elm elmfiles -- make

main.js:
	elm make Main.elm --output main.js




