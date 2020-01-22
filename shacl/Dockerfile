FROM python

WORKDIR /shapshacl
COPY ./ex_shape.ttl ./

RUN pip3 install pyshacl

ENTRYPOINT ["pyshacl","-s","ex_shape.ttl","-m","-i","rdfs","-a","-f","human","./resources/bibtex.rdf"]
