FROM ubuntu:20.04
COPY . /script
CMD python /script/index.py

