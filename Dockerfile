FROM node:16.18.1

WORKDIR /app
COPY ./app /app

RUN apt update && apt install -y \
    git \
    && npm install -g npm@9.2.0 \
    && npm install -g serverless \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*
