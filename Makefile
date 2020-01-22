URI = http://example.org/bib/


build:
	$(info Make: Building shapbird images.)
	docker build -t shapbird/bib-converter -f bib2rdf/Dockerfile ./bib2rdf
	docker build -t shapbird/shacl -f shacl/Dockerfile ./shacl

run:
ifndef BIB
	$(error The BIB variable is missing (bib file path).)
endif
	$(info Make: Running shapbird containers.)
	docker container create --name dummy -v shapvolume:/root hello-world
	docker cp $(BIB) dummy:/root/bibtex.bib
	docker run --rm -it -v shapvolume:/shapbib2rdf/resources shapbird/bib-converter URI=$(URI)
	docker run --rm -it -v shapvolume:/shapshacl/resources shapbird/shacl
	make clean

clean:
	docker rm dummy
	docker volume rm shapvolume
