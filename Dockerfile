FROM alpine:3.8
LABEL maintainer="Oliver Mazur"
LABEL Description="Python2 multi arch image. This Image uses alpine as base image"

ARG TIMEZONE=Europe/Berlin

RUN apk update && \
    apk upgrade && \
    apk add build-base && \
    apk add python && \
    apk add python-dev && \
    apk add git && \
    python -m ensurepip && \
    cp "/usr/share/zoneinfo/${TIMEZONE}" /etc/localtime && echo "${TIMEZONE}" > /etc/timezone && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    rm -r /root/.cache && \
    rm -rf /var/cache/apk/*
