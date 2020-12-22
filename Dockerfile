FROM python:3.6

#working directory

WORKDIR /app
COPY . requirement.txt
COPY . translate.py /app/


RUN make install &&\
    pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirement.txt
