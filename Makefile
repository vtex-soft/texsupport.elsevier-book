temp := elsevierbook-project-template

elsevierbook-project-template.zip:
	mkdir -p $(temp)
	cp template/*.tex $(temp)/
	cp -r doc/ $(temp)/
	cp -r sty/ $(temp)/
	mkdir -p $(temp)/img
	echo "Folder for graphics. Please place here EPS, PDF, PNG and MPS files" > $(temp)/img/README
	zip -r $(temp) $(temp)/
	rm -rf $(temp)/
	mv $(temp).zip release/
