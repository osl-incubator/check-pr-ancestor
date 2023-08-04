# Container image that runs your code
FROM python:3.8-slim

RUN apt update \
  && apt install -y --no-install-recommends git \
  && rm -rf /var/lib/apt/lists/* \
    /var/cache/apt/archives \
    /tmp/*

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
