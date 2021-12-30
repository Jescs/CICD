FROM ubuntu:20.04

ENV PATH=/home/ubuntu/.virtualenvs/bin:$PATH
RUN apt-get update && apt-get install -y python python-pip

RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY index.py .
RUN pip install flask
RUN pip install gunicorn gevent

CMD ["gunicorn", "app:app", "-c", "gunicorn.conf"]
