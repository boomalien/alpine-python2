ARG arch=amd64
FROM ${arch}/python:2.7.15-alpine3.8
COPY tmp/qemu-arm-static /usr/bin/qemu-arm-static
COPY tmp/qemu-aarch64-static /usr/bin/qemu-aarch64-static

LABEL maintainer="Oliver Mazur"
LABEL Description="Python2 multi arch image. This Image uses alpine as base image"

WORKDIR /usr/src/app

RUN apk add build-base && \
    apk add git
