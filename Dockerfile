FROM --platform=linux/arm64/v8 golang:alpine3.16
RUN go mod download github.com/skip2/go-qrcode \
    && go mod download golang.org/x/crypto \
    && go mod download golang.org/x/net \
    && go get golang.org/x/net/idna@v0.0.0-20220805013720-a33c5aa5df48
RUN apk add tini yq sudo xxd && \
    rm -f /var/cache/apk/*

WORKDIR /app/

COPY lnproxy/ .
COPY lnproxy.go ./lnproxy.go
RUN go build lnproxy.go

ADD docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
RUN chmod a+x /usr/local/bin/docker_entrypoint.sh
