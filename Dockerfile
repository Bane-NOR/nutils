FROM ghcr.io/bane-nor/base:latest

ENV PIP_BREAK_SYSTEM_PACKAGES 1

RUN apk add \
netcat-openbsd \
bind-tools \    
traceroute \
py3-pip \
gcc \
musl-dev \
python3-dev \
libffi-dev \
openssl-dev \
cargo \
make \ 
kubectl

RUN pip install --upgrade pip
RUN pip install azure-cli
CMD sh