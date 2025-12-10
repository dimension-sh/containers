FROM python:3.14-alpine
ARG VERSION

ENV ANSIBLE_HOST_KEY_CHECKING=False

RUN apk add gcc python3-dev libc-dev libffi-dev openssl-dev py3-pip bash openssh py3-cryptography
RUN pip3 install --upgrade wheel
RUN pip3 install --upgrade ansible==$VERSION paramiko

LABEL \
  org.opencontainers.image.title="Ansible" \
  org.opencontainers.image.source="https://github.com/ansible/ansible" \
  org.opencontainers.image.version="${VERSION}"