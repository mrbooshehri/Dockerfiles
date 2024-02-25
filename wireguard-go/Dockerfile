FROM golang:1.20.0-alpine

RUN apk update
RUN apk add git vim
RUN mkdir /wireguard-go
RUN git clone https://github.com/Ptechgithub/wireguard-go.git /wireguard-go
WORKDIR /wireguard-go
RUN go get github.com/bepass-org/wireguard-go/psiphon
RUN go get github.com/bepass-org/wireguard-go/warp
RUN go get github.com/bepass-org/wireguard-go/wiresocks
RUN go get github.com/bepass-org/wireguard-go/conn
RUN go get github.com/bepass-org/wireguard-go/device
RUN go get github.com/bepass-org/wireguard-go/tun/netstack
RUN go build
