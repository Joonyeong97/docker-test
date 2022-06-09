FROM python:3.8.10

RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends \
    postgresql-client-13 \
    postgresql-server-dev-13 \
    ffmpeg \
    curl