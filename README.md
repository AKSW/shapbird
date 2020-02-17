# ShapBiRd

Shapes for Bibtex to RDF

![The Shapbird](https://raw.githubusercontent.com/AKSW/shapbird/master/assets/Bird.png)



## Command Line Use

### Service Workflow (n8n & webhookd)

1. ` $ docker-compose -f service-docker-compose.yml up [-d] `
	* Builds, creates and starts the ShapBiRd service containers
	* n8n
		* Accessible via ` http://localhost:5678/ `
		* Workflow can be uploaded from file ` workflow.json `
	* webhookd
		* Readies server for requets at port :9000
		* Example deploy request ` $ curl http://localhost:9000/deploy `
		* From inside docker network (ex. n8n) ` http://webhookd:9000/deploy `

2. ` $ docker-compose -f service-docker-compose.yml down -v `
	* Stops and removes the ShapBiRd service containers, network and volumes


### Direct Deployment

1. Save your BibTeX file as ` ./resources/aksw.bib `

2. ` $ docker-compose -f deploy-docker-compose.yml up `
	* Builds, creates and starts the ShapBiRd deployment containers
	* Uses default config 
		` bib_path: ./resources/aksw.bib ` and ` base_uri: http://example.org/bib/ `

3. ` $ docker-compose -f deploy-docker-compose.yml down -v `
	* Stops and removes the ShapBiRd deployment containers, network and volumes



## Documentation

### Built With

* [Docker Compose](https://docs.docker.com/compose/) - Used to handle the Docker workflow
* [Docker](https://www.docker.com/) - Used to build and run
* [n8n](https://n8n.io/) - Used to build workflow that triggers deployment by request
* [webhookd](https://github.com/ncarlier/webhookd) - Used to wait for HTTP request to run deployment
* [dockerize](https://github.com/jwilder/dockerize) - Used to wait for dependent services in Docker Compose
* [bibtex2rdf](http://www.l3s.de/~siberski/bibtex2rdf/) - Used as configurable BibTeX to RDF converter
* [ShacShifter](https://github.com/AKSW/ShacShifter) - (WIP) Used to parse the BibLaTeX specification into SHACL shapes
* [BibLaTeX Datamodel Specification](https://github.com/plk/biblatex/blob/dev/tex/latex/biblatex/blx-dm.def) - Used as source to generate shapes ([doc](http://mirror.physik-pool.tu-berlin.de/pub/CTAN/macros/latex/exptl/biblatex/doc/biblatex.pdf))
* [pySHACL](https://github.com/RDFLib/pySHACL) - Used to run validation against SHACL shapes

### Mapping (bib2rdf/schema.map)

#### Namespaces

* rdf=http://www.w3.org/1999/02/22-rdf-syntax-ns#
* rdfs=http://www.w3.org/2000/01/rdf-schema#
* dc=http://purl.org/dc/elements/1.1/
* dct=http://purl.org/dc/terms/
* bibo=http://purl.org/ontology/bibo/
* foaf=http://xmlns.com/foaf/0.1/
* vcard=http://www.w3.org/2001/vcard-rdf/3.0#
* bibtex=http://purl.org/net/nknouf/ns/bibtex#

#### Type Mappings

Default entry types and their associated RDF types
* Article=bibo:AcademicArticle
* Book=bibo:Book
* InBook=bibo:Chapter
* MastersThesis=bibo:Thesis
* Periodical=bibo:Periodical
* PhdThesis=bibo:Thesis
* Proceedings=bibo:Proceedings
* TechReport=bibo:Report
* Conference=bibo:Conference
* Misc=bibo:Document
* Booklet=bibtex:Publication
* Manual=bibtex:Manual
* InCollection=bibtex:InCollection
* InProceedings=bibtex:InProceedings
* Unpublished=bibtex:Unpublished* 

Types assigned to person and organization
* Author=foaf:Person
* Editor=foaf:Person* 
* Organization=bibtex:Organization
* Institution=bibtex:Organization
* School=bibtex:Organization
* Publisher=bibtex:Organization* 

Types assigned to collection resources
* Journal=bibo:Journal* 
* Series=bibo:Series* 
* Collection=bibo:Collection* 

Resource for the 'and other' author/editor part
* EtAl=bibtex:EtAl* 

#### Field mappings

Address related fields
* address=vcard:ADR
* location=vcard:ADR* 

Date related fields
* year=bibtex:year
* month=bibtex:month* 

Title related fields
* title=dct:title* 

Collection related fields
* booktitle=dct:isPartOf
* journal=dct:isPartOf
* series=dct:isPartOf
* crossref=dct:isPartOf* 

Person or organization related fields
* author=dct:creator
* editor=bibtex:editor* 
* publisher=dc:publisher
* institution=bibtex:institution
* organization=bibtex:organization
* school=bibtex:school* 

Identifier fields
* url=dct:hasFormat
* key=dct:identifier* 

All other bibtex fields
* annote=bibtex:annote
* chapter=bibtex:chapter
* edition=bibtex:edition
* howpublished=bibtex:howpublished
* note=bibtex:note
* number=bibtex:number
* pages=bibtex:pages
* type=bibtex:type
* volume=bibtex:volume* 
* abstract=dct:abstract
* keywords=bibtex:keywords
* isbn=bibo:isbn
* issn=bibo:issn
* doi=bibo:doi
* biburl=rdfs:seeAlso* 

Fields derived from BibTeX information (aksw.bib specific)
* bdsk-url-1=rdfs:seeAlso
* bdsk-url-2=rdfs:seeAlso
* bdsk-url-3=rdfs:seeAlso
* ee=rdfs:seeAlso
* subtitle=dct:isPartOf

Used if createAddressResource
* addressCountry=vcard:Country
* addressLocality=vcard:Locality* 

Used for the merged date
* date=dct:issued* 

Used for person and organization resources
* personFullname=foaf:name
* personStructuredName=vcard:N* 

The structured name has several parts
* nameFamily=vcard:Family
* namePrefix=vcard:Prefix
* nameSuffix=vcard:Suffix
* nameGiven=vcard:Given
* nameOther=vcard:Other* 

Property used to attach a label
* label=rdfs:label* 
