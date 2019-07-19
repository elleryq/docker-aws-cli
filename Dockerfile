FROM python:3.7-stretch
ENV PATH "$PATH:/root/.local/bin"
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y --no-install-recommends apt-utils && \
    apt-get install -y zip && \
    rm -rf /var/lib/apt/lists/* && \
    pip install awscli==1.16.200 jinja2-cli==1.1.3 awsebcli==3.15.2 --upgrade --user
