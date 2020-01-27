# Image to get wait-for-it.sh
FROM alpine/git as git

WORKDIR /

RUN git clone https://github.com/vishnubob/wait-for-it



# Final image to run validation
FROM python

COPY --from=git /wait-for-it/wait-for-it.sh /shacl/wait-for-it.sh

WORKDIR /shacl
COPY ./ex_shape.ttl ./

RUN pip3 install pyshacl \
	&& chmod +x /shacl/wait-for-it.sh

ENTRYPOINT ["pyshacl","-s","ex_shape.ttl","-m","-i","rdfs","-a","-f","human","/data/bibtex.rdf"]
