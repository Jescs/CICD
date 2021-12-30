FROM python:3.6.4
RUN apk add --no-cache py3-pip \
    && pip3 install --upgrade pip
RUN mkdir /app
RUN pip3 --no-cache-dir install -r requirements.txt
COPY index.py /app

WORKDIR /app

EXPOSE 5000

ENTRYPOINT ["python"]
CMD ["helloworld.py"]
