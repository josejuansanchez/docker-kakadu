FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive 
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/kakadu
ENV PATH=$PATH:/kakadu

RUN apt-get update \
    && apt-get install -y unzip \
    && apt-get install -y wget \
    && mkdir /kakadu \
    && cd /kakadu \
    && wget http://kakadusoftware.com/wp-content/uploads/KDU805_Demo_Apps_for_Linux-x86-64_200602.zip \
    && unzip -j KDU805_Demo_Apps_for_Linux-x86-64_200602.zip \
    && rm KDU805_Demo_Apps_for_Linux-x86-64_200602.zip \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

VOLUME /jp2

EXPOSE 80

CMD ["/bin/sh", "-c", "/kakadu/kdu_server"]