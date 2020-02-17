# Image to wget bibtex2rdf.jar
FROM cirrusci/wget as wget

WORKDIR /bib2rdf

RUN wget https://www.l3s.de/~siberski/bibtex2rdf/bibtex2rdf.jar



# Final image to run conversion
FROM openjdk:8-jdk-slim

COPY --from=wget /bib2rdf/bibtex2rdf.jar /bib2rdf/bibtex2rdf.jar

WORKDIR /bib2rdf
COPY ./schema.map ./schema.map

CMD ["java","-jar","bibtex2rdf.jar", "-schema","schema.map","-enc","UTF-8","/data/bibtex.bib","/data/bibtex.rdf","-baseuri","http://example.org/bib/"]
