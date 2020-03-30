FROM ubuntu:18.04

RUN apt-get update

LABEL version="1.0" \
        maintainer="elior.av@gmail.com" \
        description="A Docker wrapper for VCFtools"

ARG WORKDIR_PATH=/usr/src/app
ARG SHARE_FOLDER=$WORKDIR_PATH/share_folder

RUN mkdir -p $SHARE_FOLDER
WORKDIR $WORKDIR_PATH

RUN apt-get install -y vcftools
