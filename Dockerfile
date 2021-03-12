FROM elyra/kernel-py:2.5.0

ENV VERSION 0.1.0

ENV NB_UMASK=022
ENV NB_USER=ftp
ENV NB_UID=21
ENV NB_GID=21
ENV NB_GROUP=21
ENV TZ Europe/Paris

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --no-cache \
    notebook==6.1.5 \
    nbdime==3.0.0b1  \
    nbformat==5.1.2 \
    nbconvert==6.0.7 \
    ipywidgets==7.6.3 \
    ipympl==0.6.3 \
    matplotlib==3.3.4 \
    naas-drivers \
    naas

USER root

RUN mkdir /home/$NB_USER && \
    mkdir /home/$NB_USER/ftp && \
    fix-permissions /home/$NB_USER

RUN apt-get update && \
    apt-get -y install redir tzdata tesseract-ocr libtesseract-dev libcairo2-dev
