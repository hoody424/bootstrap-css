FROM ubuntu:bionic

WORKDIR /opt/gusit

ENV PYTHONUNBUFFERED=1
ADD app/ /opt/gusit/

RUN apt-get update -y && apt-get install -y --fix-missing \
    python3-dev \
    python3 \
    python3-flask
RUN apt-get install -y nano \
    git \
    bash-completion \
    python3-pip

RUN pip3 install --upgrade pip setuptools && \
    pip3 install -r requirements.txt
