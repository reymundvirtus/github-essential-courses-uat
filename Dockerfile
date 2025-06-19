FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
 python3.10 \
 python3-pip \
 python3.10-dev \
 build-essential \
 git

RUN python3.10 -m pip install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]