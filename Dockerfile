FROM blang/latex

MAINTAINER Douglas De Rizzo Meneghetti <douglasrizzom@gmail.com>

RUN apt-get -y update && \
    apt-get -yq install biber texlive-extra

RUN apt-get autoclean
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /data
VOLUME ["/data"]
