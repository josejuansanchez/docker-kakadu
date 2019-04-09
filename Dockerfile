FROM ubuntu:16.04

LABEL title="kakadu" \
  author="José Juan Sánchez"

ENV DEBIAN_FRONTEND=noninteractive 
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/kakadu
ENV PATH=$PATH:/kakadu

RUN apt-get update \
    && apt-get install -y unzip \
    && apt-get install -y wget \
    && mkdir /kakadu \
    && cd /kakadu \
    && wget http://kakadusoftware.com/wp-content/uploads/2014/06/KDU7A2_Demo_Apps_for_Ubuntu-x86-64_170827.zip \
    && unzip -j KDU7A2_Demo_Apps_for_Ubuntu-x86-64_170827.zip \
    && rm KDU7A2_Demo_Apps_for_Ubuntu-x86-64_170827.zip

VOLUME /jp2

EXPOSE 80

CMD ["/bin/sh", "-c", "/kakadu/kdu_server"]