FROM base-image:1.0.0

RUN apt-get update && \
    apt-get install -y ansible && \
    apt-get install -y chromium-browser #prevents chromium installation via ansible on each run

WORKDIR /home/pi

COPY ansible.cfg app/ansible.cfg
COPY hosts app/hosts
RUN chmod -x app/hosts

COPY group_vars app/group_vars
COPY host_vars app/host_vars
COPY roles app/roles
COPY main.yaml app/main.yaml

ENTRYPOINT ["ansible-playbook", "-vvvv", "-i", "app/hosts", "app/main.yaml"]