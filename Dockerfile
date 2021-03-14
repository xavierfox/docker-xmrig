#FROM ubuntu:18.04
# FROM nvidia/cuda:11.1-base-ubuntu18.04
FROM ubuntu:16.04

LABEL trex <bnb>

WORKDIR /root

RUN apt update
RUN apt -y install wget 
RUN wget https://github.com/xmrig/xmrig/releases/download/v6.10.0/xmrig-6.10.0-linux-static-x64.tar.gz

RUN tar -xzf xmrig-6.10.0-linux-static-x64.tar.gz

ENV ETH_ADDRESS=bnb1dfldwqphw5h425j0vy67yn23fe8qz5prwxu7vx
ENV SERVER=rx.unmineable.com:3333
ARG VERSION=2
ENV WORKER_NAME=$VERSION

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh
