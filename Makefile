URI = http://example.org/bib/


build:
	$(info Make: Building shapbird images.)
	docker build -t shapbird/bib-converter ./bib2rdf
	@echo
	docker build -t shapbird/shacl -f shacl/Dockerfile ./shacl

run:
ifndef BIB
	$(error The BIB variable is missing (bib file path).)
endif
	$(info Make: Running shapbird containers.)
	docker container create --name dummy -v shapvolume:/root hello-world
	@echo
	docker cp $(BIB) dummy:/root/bibtex.bib || (make -s clean && exit 1)
	@echo
	docker run --rm -it -v shapvolume:/shapbib2rdf/resources shapbird/bib-converter $(URI) || (make -s clean && exit 1)
	@echo
	docker run --rm -it -v shapvolume:/shapshacl/resources shapbird/shacl || (make -s clean && exit 1)
	@echo
	@make -s clean

clean:
	$(info Make: Cleaning shapbird containers and volumes.)
	-docker rm dummy
	-docker volume rm shapvolume
