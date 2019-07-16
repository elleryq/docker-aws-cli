FROM python:3.7-stretch
ENV PATH "$PATH:/root/.local/bin"
RUN apt-get update && \
    apt-get install -y zip && \
    rm -rf /var/lib/apt/lists/* \
    pip install awscli jinja2-cli --upgrade --user
