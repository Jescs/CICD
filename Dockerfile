FROM ubuntu:16.04

ENV PATH=/home/ubuntu/.virtualenvs/bin:$PATH

RUN apt-get update && apt-get install -y python python-pip
RUN pip install --upgrade pip 

  
RUN mkdir /app

RUN pip install flask
COPY index.py /opt

ENTRYPOINT FLASK_APP=/opt/index.py flask run --host=0.0.0.0
