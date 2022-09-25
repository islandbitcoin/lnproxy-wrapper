FROM --platform=linux/arm64/v8 ghcr.io/bumi/lnme:master

RUN apk add tini yq sudo && \
    rm -f /var/cache/apk/*

ADD docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
RUN chmod a+x /usr/local/bin/docker_entrypoint.sh

