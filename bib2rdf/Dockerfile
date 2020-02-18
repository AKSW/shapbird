# Image to run conversion
FROM openjdk:8-jdk-slim

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		wget

WORKDIR /bib2rdf
RUN wget https://www.l3s.de/~siberski/bibtex2rdf/bibtex2rdf.jar
COPY ./schema.map ./schema.map

CMD ["java","-jar","bibtex2rdf.jar", "-schema","schema.map","-enc","UTF-8","/data/bibtex.bib","/data/bibtex.rdf","-baseuri","http://example.org/bib/"]
