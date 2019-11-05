from archlinux:latest
# mibis: a full utilities environment for my daily use
# use 16.04 is for pwn without align
# alias mibisrmv="docker run -it -v "`pwd`":/root/share --cap-add=SYS_PTRACE --security-opt seccomp=unconfined --rm mibis /bin/bash"
WORKDIR /root

# This folder is for -v location
RUN mkdir share

# Utilities
RUN pacman -Sy --noconfirm vim less ltrace strace gcc grep make file which man

ENTRYPOINT /bin/bash
