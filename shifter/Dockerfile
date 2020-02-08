# Image to get repository
FROM alpine/git as git

WORKDIR /shifter

RUN git clone https://github.com/luckyos-code/ShacShifter.git
WORKDIR /shifter/ShacShifter
RUN git checkout feature/BiblatexDefParser



# Final Image to create biblatex shapes
FROM python

COPY --from=git /shifter/ShacShifter /shifter

WORKDIR /shifter

RUN pip install -r requirements.txt \
	&& wget https://raw.githubusercontent.com/plk/biblatex/dev/tex/latex/biblatex/blx-dm.def

ENTRYPOINT ["bin/ShacShifter","-b","blx-dm.def","-m","/data/schema.map","-o","/data/shapes.ttl"]
