FROM python:3.7-alpine3.11

#working directory

WORKDIR /app
COPY . requirement.txt
COPY . translate.py /app/


RUN apk del .translateapp\
    && pip install cython &&\
    pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirement.txt
