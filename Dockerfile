FROM jenkins/inbound-agent:4.11-1

USER root

RUN DEBIAN_FRONTEND=noninteractive apt update && apt install gettext gpg gnupg -y

# Install kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

RUN curl -LO "https://github.com/mozilla/sops/releases/download/v3.7.1/sops_3.7.1_amd64.deb" && \
    dpkg -i sops_3.7.1_amd64.deb