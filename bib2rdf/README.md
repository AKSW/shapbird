## Usage

#### Docker

* Run as container
* From shapbird directory use ``` $ docker build -t shapbird/bib-converter -f bib2rdf/Dockerfile ``` and ``` $ docker run -it shapbird/bib-converter ```
* Default is defined as ```  CMD ["make", "bib=aksw.bib"] ```

#### Make
 
* ``` $ make bib=<path> ``` converts a provided BibTeX file into a RDF file (default: ``` bib=../resources/aksw.bib ```)


## Documentation

### Built With

* [bibtex2rdf](http://www.l3s.de/~siberski/bibtex2rdf/) - Used as configurable BibTeX to RDF converter
* [Make](https://www.gnu.org/software/make/) - Used to run conversion
* [Docker](https://www.docker.com/) - Used to build and run as container

### 
