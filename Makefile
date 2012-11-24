aimBook = anovle.pdf
$(aimBook):test.ps
	ps2pdf test.ps anovel.pdf
test.ps:test.dvi
	dvips -o test.ps test.dvi
test.dvi:test.tex
	latex test.tex
install:anovle.pdf
	open $(aimBook) 
