## Command Line Use

### Docker

1. ` $ docker build -t shifter . `
2. ` $ docker run --rm -it -v <path/to/def/file>:/data/blx-dm.def shifter `



## Documentation

### Built With

* [ShacShifter](https://github.com/AKSW/ShacShifter) - (WIP) Used to parse the BibLaTeX specification into SHACL shapes
* [BibLaTeX Datamodel Specification](https://github.com/plk/biblatex/blob/dev/tex/latex/biblatex/blx-dm.def) - Used as source to generate shapes ([doc](http://mirror.physik-pool.tu-berlin.de/pub/CTAN/macros/latex/exptl/biblatex/doc/biblatex.pdf))
* [Docker](https://www.docker.com/) - Used to build and run
