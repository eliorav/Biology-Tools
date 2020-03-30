FROM ubuntu:18.04

RUN apt-get update && apt-get install -y unzip curl

LABEL version="1.0" \
        maintainer="elior.av@gmail.com" \
        description="A Docker wrapper for plink2"

ARG WORKDIR_PATH=/usr/src/app
ARG SHARE_FOLDER=$WORKDIR_PATH/share_folder
ARG PLINK_ZIP=plink.zip
ARG PLINK2_URL=http://s3.amazonaws.com/plink2-assets/plink2_linux_x86_64_20200328.zip

RUN mkdir -p $SHARE_FOLDER
WORKDIR $WORKDIR_PATH

RUN curl -fSL $PLINK2_URL -o $PLINK_ZIP \
    && unzip $PLINK_ZIP -d $WORKDIR_PATH \
    && rm $PLINK_ZIP
