# Image to run validation
FROM python

WORKDIR /shacl
COPY ./ex_shape.ttl ./

RUN pip3 install pyshacl

## Get dockerize for use in docker-compose
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

ENTRYPOINT ["pyshacl","-s","ex_shape.ttl","-m","-i","rdfs","-a","-f","human","/data/bibtex.rdf"]
