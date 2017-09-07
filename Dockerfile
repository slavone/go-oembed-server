FROM golang:1.9.0-alpine3.6

WORKDIR /app/
COPY . .
RUN apk add --no-cache git mercurial \
    && go get github.com/widnyana/oembed \
    && apk del git mercurial \
    && go build -o go-oembed-server

CMD ["./go-oembed-server"]
