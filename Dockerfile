FROM alpine:latest
RUN apk add --update --no-cache ca-certificates openssh-client git
RUN wget https://download.docker.com/linux/static/stable/x86_64/docker-17.12.1-ce.tgz && \
    tar xzvf docker-17.12.1-ce.tgz && \
    cp docker/docker /usr/bin/ && \
    rm -rf docker-17.12.1-ce.tgz docker
RUN wget -qO - https://github.com/sirmar/meta/raw/master/script/remote_linux_install.sh | sh
