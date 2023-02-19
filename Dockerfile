FROM alpine:3.17

RUN apk add --no-cache \
    bash \
    curl \
    git \
    busybox-extras \
    openssh-client \
    mysql-client \
    python3 \
    py3-pip \
    py3-setuptools \
    bind-tools \
    jq \
    yq

RUN pip install --upgrade \
    awscli  \
    saws \
    six

ADD .aws /root/.aws
ADD .bash_alias /root/.bash_alias


# ref: https://github.com/leodotcloud/swiss-army-knife/blob/main/package/Dockerfile
