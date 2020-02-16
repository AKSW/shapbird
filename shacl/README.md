## Command Line Use

### Docker

1. ` $ docker build -t shacl . `
2. ` $ docker run --rm -it -v <path/to/shapes/file>:/data/shapes.ttl -v <path/to/rdf/file>:/data/bibtex.rdf shacl `



## Documentation

### Built With

* [pySHACL](https://github.com/RDFLib/pySHACL) - Used to run validation against SHACL shapes
* [Docker](https://www.docker.com/) - Used to build and run
* [dockerize](https://github.com/jwilder/dockerize) - Used to wait for dependent services in Docker Compose
