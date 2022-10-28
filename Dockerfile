
FROM rust:bullseye

RUN apt-get update && apt-get -y upgrade

# misc rust
RUN rustup component add clippy
RUN rustup target add wasm32-unknown-unknown
RUN rustup target add aarch64-unknown-linux-musl

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
#RUN mv linux-arm64/helm /usr/bin/helm

ENTRYPOINT ["sh"]
