
build/main.pdf: main.tex build/main.blg
	TEXINPUTS=./header: lualatex --shell-escape --output-directory=build $^

build/main.blg: build/main.bcf
	biber --output_directory build main.bcf

build/main.bcf: main.tex
	TEXINPUTS=./header: lualatex --shell-escape --output-directory=build $^

