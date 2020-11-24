FROM elyra/kernel-py:2.3.0

ENV VERSION 0.1.0

ENV NB_UMASK=022
ENV NB_USER=ftp
ENV NB_UID=21
ENV NB_GID=21
ENV NB_GROUP=21

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --use-feature=2020-resolver --no-cache \
    notebook==6.1.5 \
    nbconvert \
    nbformat \
    nbresuse \
    ipywidgets \
    ipympl \
    matplotlib \
    naas-drivers \
    naas

USER root
RUN apt-get update && \
    apt-get -y install redir tzdata tesseract-ocr libtesseract-dev libcairo2-dev

USER jovyan
