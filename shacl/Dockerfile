FROM python

WORKDIR /shacl
COPY ./ex_shape.ttl ./

ENTRYPOINT ["pyshacl","-s","ex_shape.ttl","-m","-i","rdfs","-a","-f","human","/data/bibtex.rdf"]
