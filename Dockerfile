FROM python:3.8.10

RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends \
    postgresql-client-12 \
    postgresql-server-dev-12 \
    ffmpeg \
    curl