FROM ubuntu:18.04

ARG SALT_KEY_URL="https://repo.saltstack.com/py3/ubuntu/18.04/amd64/latest/SALTSTACK-GPG-KEY.pub"
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    --no-install-recommends \
    gnupg \
    ca-certificates \
    curl \
    wget \
    vim \
    fish \
    htop

RUN wget -O - ${SALT_KEY_URL} | apt-key add - && \
    echo "deb http://repo.saltstack.com/py3/ubuntu/18.04/amd64/latest bionic main" >> \
    /etc/apt/sources.list.d/saltstack.list

RUN apt-get update && \
    apt-get install -y \
    salt-minion

COPY setup.sh /opt/setup.sh

ENTRYPOINT ["sh","/opt/setup.sh"]