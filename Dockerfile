FROM python:3.6

#working directory

WORKDIR /app
COPY . requirement.txt
COPY . translate.py /app/

# hadolint ignore=DL3013 
RUN make install &&\  
    pip install --trusted-host pypi.python.org -r requirement.txt
