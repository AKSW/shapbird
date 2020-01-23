# Image to get jar
FROM cirrusci/wget as wget

WORKDIR /shapshacl

RUN wget https://www.l3s.de/~siberski/bibtex2rdf/bibtex2rdf.jar



# Final image to run conversion
FROM openjdk:8-jdk-slim

COPY --from=wget /shapshacl/bibtex2rdf.jar /shapshacl/bibtex2rdf.jar
WORKDIR /shapshacl

COPY ./Makefile ./schema.map ./

ENTRYPOINT ["java","-jar","bibtex2rdf.jar","-schema","schema.map","-enc","UTF-8","/shapbib2rdf/resources/bibtex.bib","/shapbib2rdf/resources/bibtex.rdf","-baseuri"]
