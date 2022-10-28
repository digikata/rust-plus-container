
FROM alpine:3.16

RUN apk add --no-cache curl
# RUN apk add --no-cache python
# RUN apk add --no-cache zip

# aws cli
# There is an x86 and arm version
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
#RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

# helm
#RUN curl "https://get.helm.sh/helm-v3.10.1-linux-arm64.tar.gz" -o "helm.tar.gz"
RUN curl "https://get.helm.sh/helm-v3.10.1-linux-amd64.tar.gz" -o "helm.tar.gz"
RUN tar xzf helm.tar.gz
RUN mv linux-amd64/helm /usr/bin/helm

