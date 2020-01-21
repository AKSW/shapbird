FROM python

WORKDIR /shapshacl
COPY ./shacl/ex_shape.ttl ./resources/ex_fail.ttl ./resources/ex_success.ttl ./

RUN pip3 install pyshacl

ENTRYPOINT ["pyshacl","-s","ex_shape.ttl","-m","-i","rdfs","-a","-f","human"]
