FROM docker.io/alpine:3.21

RUN apk add --no-cache \
    texlive texlive-luatex texmf-dist-latexextra texmf-dist-fontsrecommended

WORKDIR /data
VOLUME ["/data"]

ENTRYPOINT ["pdflatex"]
CMD ["-interaction=nonstopmode", "daud-cv.tex"]
