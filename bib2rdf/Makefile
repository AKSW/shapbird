BIB = ../resource/aksw.bib
URI = http://example.org/bib/



.INTERMEDIATE : bibtex2rdf.jar

translation: bibtex2rdf.jar
	java -jar bibtex2rdf.jar -schema schema.map -enc UTF-8 -baseuri $(URI) $(basename $(BIB)).bib $(basename $(BIB)).rdf
	# rapper -i rdfxml -o turtle $(basename $(bib)).rdf > $(basename $(bib)).ttl
	# rm $(basename $(bib)).rdf
	rm bibtex2rdf.log

bibtex2rdf.jar:
	wget https://www.l3s.de/~siberski/bibtex2rdf/bibtex2rdf.jar