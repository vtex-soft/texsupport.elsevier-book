temp := elsevierbook-project-template

zip:
	mkdir -p $(temp)
	cp template/*.tex $(temp)/
	mkdir -p $(temp)/doc
	cp -r doc/elsbookdoc.pdf $(temp)/doc
	cp -r sty/ $(temp)/
	mkdir -p $(temp)/img
	echo "Folder for graphics. Please place here EPS, PDF, PNG and MPS files" > $(temp)/img/README
	zip -r $(temp).zip $(temp)/
	rm -rf $(temp)/
	mv $(temp).zip release/
