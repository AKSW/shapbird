FROM debian

WORKDIR /shapbib2rdf
COPY ./Makefile ./schema.map ./

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		wget \
		ca-certificates \
		make \
		default-jdk \
	&& apt-get autoremove \
	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["make","BIB=./resources/bibtex.bib"]
