FROM rocker/r-ver:4.0.2

# File Author / Maintainer
MAINTAINER Toni Hermoso Pulido <toni.hermoso@crg.eu>

RUN apt-get update; apt-get upgrade -y

COPY deps.R /usr/local

RUN Rscript /usr/local/deps.R

# Clean cache
RUN apt-get clean
RUN set -x; rm -rf /var/lib/apt/lists/*
