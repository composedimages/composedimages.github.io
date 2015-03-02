FROM debian:jessie

WORKDIR /opt

RUN apt-get update && apt-get install wget -y

RUN mkdir -p /opt/hugo
ENV PATH /opt/hugo:$PATH

RUN wget https://github.com/spf13/hugo/releases/download/v0.13/hugo_0.13_linux_386.tar.gz -O hugo.tar.gz\
    && tar -xvf hugo.tar.gz -C /opt/hugo --strip-components=1 \
    && mv /opt/hugo/hugo* /opt/hugo/hugo
