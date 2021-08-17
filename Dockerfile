FROM jenkins/inbound-agent:4.6-1

USER root

# Install docker CLI
RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh ./get-docker.sh

# Install kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

USER ${user}

ENV DOCKER_HOST=${DOCKER_HOST}