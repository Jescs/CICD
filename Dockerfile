FROM python:3.7-alpine

WORKDIR /demoapp
COPY ./ ./

RUN pip install flask

CMD ["python", "app.py"]
