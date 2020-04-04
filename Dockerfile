FROM ubuntu:18.04

WORKDIR /app

RUN apt update && apt upgrade -y && apt install -y hugo
