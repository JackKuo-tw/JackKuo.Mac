from ubuntu:16.04
# mibis: a full utilities environment for my daily use
# use 16.04 is for pwn without align
# alias mibisrmv="docker run -it -v "`pwd`":/root/share --cap-add=SYS_PTRACE --security-opt seccomp=unconfined --rm mibis /bin/bash"
WORKDIR /root

# This folder is for -v location
RUN mkdir share

# Utilities
RUN apt-get update && apt-get install -y git wget curl file vim binutils less gcc gdb strace ltrace netcat socat dnsutils

# Python
RUN apt-get install -y python python3 python-pip python3-pip
RUN pip install pwntools && \
    pip install git+https://github.com/ReFirmLabs/binwalk.git
RUN pip3 install ipython request

# GDB PEDA
RUN git clone https://github.com/longld/peda.git && echo "source ~/peda/peda.py" >> .gdbinit


# toolkit
RUN apt-get install -y ruby ruby-dev
RUN gem install one_gadget && \
    gem install seccomp-tools

RUN gem install one_gadget
RUN pip install capstone
RUN pip install pwntools
RUN git clone https://github.com/JonathanSalwan/ROPgadget.git /tmp && ls /tmp && python /tmp/setup.py install && rm -rf /tmp/*
RUN git clone https://github.com/scwuaptx/Pwngdb.git ~/Pwngdb && cp ~/Pwngdb/.gdbinit ~/

# PS1
RUN echo 'export PS1="\n\[\e[1;93m\]\u@\h \w\n\\# \[\e[0m\]"' >> /root/.bashrc
RUN echo 'export CLICOLOR=true' >> /root/.bashrc
RUN echo 'alias ls="ls -Fh --color=auto"' >> /root/.bashrc

ENTRYPOINT /bin/bash
