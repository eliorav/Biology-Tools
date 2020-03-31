FROM ubuntu:18.04

LABEL version="1.0" \
        maintainer="elior.av@gmail.com" \
        description="A Docker wrapper for hg38db"

ARG WORKDIR_PATH=/usr/src/app
ARG SHARE_FOLDER=$WORKDIR_PATH/share_folder

RUN mkdir -p $SHARE_FOLDER
WORKDIR $WORKDIR_PATH

RUN apt-get update && apt-get install mysql-client -y
COPY ./entrypoint.sh .

ENTRYPOINT ["sh", "entrypoint.sh"]