FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=nointeractive

RUN apt-get update \
  && apt install -y -q \
  gcc \
  ruby

RUN gem install ceedling

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
