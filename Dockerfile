from ubuntu:18.04
# mibis: a full utilities environment for my daily use
WORKDIR /root

# Utilities
RUN apt-get update && apt-get install -y git wget curl file vim binutils less gcc gdb

# Python
RUN apt-get install -y python python3 python-pip python3-pip
RUN pip  install pwntools
RUN pip3 install ipython request

# GDB PEDA
RUN git clone https://github.com/longld/peda.git ~/peda && echo "source ~/peda/peda.py" >> ~/.gdbinit
