FROM debian

WORKDIR /shapbird

COPY ./bib2rdf/Makefile ./bib2rdf/schema.map ./resources/aksw.bib ./

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		wget \
		ca-certificates \
		make \
		default-jdk \
	&& apt-get autoremove \
	&& rm -rf /var/lib/apt/lists/*

CMD ["make", "bib=aksw.bib"]