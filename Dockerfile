FROM elyra/kernel-py:2.3.0

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --use-feature=2020-resolver --no-cache \
    nbconvert \
    ipywidgets \
    ipympl \
    matplotlib \
    naas-drivers \
    naas

RUN apt-get update && \
    apt-get -y install redir tzdata tesseract-ocr libtesseract-dev libcairo2-dev
