FROM python:3.6.4

RUN mkdir /app

COPY index.py /app

WORKDIR /app

CMD ["python","index.py"]
