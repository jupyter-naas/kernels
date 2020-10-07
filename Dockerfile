FROM elyra/kernel-py:2.3.0

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --use-feature=2020-resolver --no-cache \
    nbconvert \
    ipywidgets \
    ipympl \
    matplotlib \
    naas-drivers \
    naas