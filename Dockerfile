FROM resin/rpi-raspbian:latest

RUN apt-get update && \ 
    apt-get install ansible

COPY ansible.cfg /app/ansible.cfg
COPY hosts /app/hosts
RUN chmod -x /app/hosts

COPY group_vars /app/group_vars
COPY host_vars /app/host_vars
COPY roles /app/roles
COPY main.yaml /app/main.yaml

WORKDIR /app

ENTRYPOINT ["ansible-playbook", "-v", "-i", "hosts", "main.yaml"]