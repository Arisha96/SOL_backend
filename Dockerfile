FROM ubuntu:latest
MAINTAINER Arina Pafnuteva 'arina@pafnuteva.ru'
RUN apt-get update -y
RUN apt-get install -y python3-pip python-dev-is-python3 build-essential
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
CMD ["python3", "run.py"]
