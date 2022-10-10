# pull official base image
FROM centos/python-38-centos7:latest

# set user
USER root

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install utils
RUN yum install -y vim

# install requirements
COPY ./deploy/app/requirements.txt .
RUN pip install -U pip && pip install -r requirements.txt

# copy project
COPY . .

# run chmod
RUN chmod +x deploy/app/run.sh