
FROM alpine:latest

RUN apk add --no-cache bash
RUN apk add --no-cache curl
RUN apk add --no-cache python3
RUN apk add --no-cache aws-cli
RUN apk add --no-cache docker docker-compose

# helm
#RUN curl "https://get.helm.sh/helm-v3.10.1-linux-arm64.tar.gz" -o "helm.tar.gz"
RUN curl "https://get.helm.sh/helm-v3.10.1-linux-amd64.tar.gz" -o "helm.tar.gz"
RUN tar xzf helm.tar.gz
RUN mv linux-amd64/helm /usr/bin/helm

