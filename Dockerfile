from ubuntu:18.04

WORKDIR /root

RUN apt update \
    && apt install -y git wget curl file vim binutils less \
    && apt install -y python python3 python-pip python3-pip gcc gdb \
    && pip3 install ipython request \
    && pip install pwntools \

