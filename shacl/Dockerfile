# Image to run validation
FROM python

WORKDIR /shacl

RUN pip3 install pyshacl

## Get dockerize for use in docker-compose
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

CMD ["pyshacl", "-s","/data/shapes.ttl","-m","-i","rdfs","-a","-f","human","/data/bibtex.rdf"]
