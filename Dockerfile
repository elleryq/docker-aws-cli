FROM python:3.7-stretch
ENV PATH "$PATH:/root/.local/bin"
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y --no-install-recommends apt-utils && \
    apt-get install -y zip && \
    rm -rf /var/lib/apt/lists/* && \
    pip install awscli jinja2-cli --upgrade --user
