Docker
* From shapbird directory use ``` $ docker build -t shapbird/bib-converter -f bib2rdf/Dockerfile ``` and ``` $ docker run -i -t shapbird/bib-converter ```
* Default is defined as ```  CMD ["make", "bib=aksw.bib"] ```

Make
* ``` $ make bib=<path> ``` converts a provided *bib* file into a *rdf* file (default: ``` bib=../resources/aksw.bib ```)
