# Ubuntu with PHP 5.5.9 and Websocketd 0.2.10
FROM ubuntu:14.04

MAINTAINER Petr Karmashev (Rottenwood) <smonkl@bk.ru>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
	apt-get install --no-install-recommends -y php5 php5-cli php5-mysql php5-curl curl htop mc && \
	apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY websocketd/websocketd bin/