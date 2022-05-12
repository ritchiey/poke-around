FROM alpine

# Install mysql command-line client
RUN apk add --no-cache mysql-client

# Install aws command-line client
RUN apk add --no-cache \
        python3 \
        py3-pip \
    && pip3 install --upgrade pip \
    && pip3 install --no-cache-dir \
        awscli \
    && rm -rf /var/cache/apk/*

CMD [ "sh" ]
