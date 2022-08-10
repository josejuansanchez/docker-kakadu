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
    && rm KDU7A2_Demo_Apps_for_Ubuntu-x86-64_170827.zip \
    && apt-get install -y nginx

COPY default /etc/nginx/sites-available/

VOLUME /jp2

EXPOSE 80

# Test
COPY world.jp2 /kakadu
COPY start.sh /kakadu
RUN chmod +x /kakadu/start.sh

CMD ["/bin/sh", "-c", "/kakadu/start.sh"]
#CMD ["/bin/sh", "-c", "/kakadu/kdu_server", "-port", "8090"]
#CMD ["nginx", "-g", "daemon off;"]