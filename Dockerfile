FROM python:3.7.3-strech

#working directory

WORKDIR /app

COPY . translate.py /app/


RUN translate.py at container launch
