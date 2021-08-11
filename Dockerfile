FROM jenkins/inbound-agent:4.6-1

USER root

# Install docker CLI

RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh ./get-docker.sh

USER ${user}

ENV DOCKER_HOST=${DOCKER_HOST}