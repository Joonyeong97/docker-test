#FROM python:3.8.10
nvidia/cuda:11.2.2-cudnn8-runtime-ubuntu20.04
FROM

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A4B469963BF863CC
RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends \
    postgresql postgresql-contrib \
    ffmpeg \
    curl

#RUN apt-get install wget ca-certificates && \
#    sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list' && \
#    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc |apt-key add - && \
#    apt-get update --yes && apr-get upgrade &&\
#    apt-get install postgresql postgresql-contrib