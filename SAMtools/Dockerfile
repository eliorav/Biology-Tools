FROM ubuntu:18.04 as build

LABEL version="1.0" \
        maintainer="elior.av@gmail.com" \
        description="A Docker wrapper for SAMtools"

ARG WORKDIR_PATH=/usr/src/app
ARG SHARE_FOLDER=$WORKDIR_PATH/share_folder
ARG SAMTOOLS_ZIP=samtools.tar.bz2
ARG FOLDER_NAME=samtools-1.10
ARG SAMTOOLS_URL=https://github.com/samtools/samtools/releases/download/1.10/$FOLDER_NAME.tar.bz2

RUN mkdir -p $SHARE_FOLDER
WORKDIR $WORKDIR_PATH

RUN apt-get update && \
    apt-get install curl build-essential libncurses5-dev libncursesw5-dev zlib1g-dev libbz2-dev liblzma-dev -y && \
    curl -fSL $SAMTOOLS_URL -o $SAMTOOLS_ZIP && \
    tar -xf samtools.tar.bz2 

WORKDIR $WORKDIR_PATH/$FOLDER_NAME
RUN ./configure --prefix=$WORKDIR_PATH && make && make install
WORKDIR $WORKDIR_PATH

FROM ubuntu:18.04

LABEL version="1.0" \
        maintainer="elior.av@gmail.com" \
        description="A Docker wrapper for SAMtools"

ARG WORKDIR_PATH=/usr/src/app
ARG SHARE_FOLDER=$WORKDIR_PATH/share_folder

RUN mkdir -p $SHARE_FOLDER
WORKDIR $WORKDIR_PATH

COPY --from=build $WORKDIR_PATH/bin bin/
ENV PATH="$WORKDIR_PATH/bin:${PATH}"