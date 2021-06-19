FROM ubuntu:latest
MAINTAINER Angello Maggio "cooltalha27@gmail.com"
RUN apt-get install software-properties-common
RUN apt-add-repository universe
RUN apt-get update
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
ADD . /flask-app
WORKDIR /flask-app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["flask-docker.py"]
