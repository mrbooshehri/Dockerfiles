FROM golang:1.22.2-bookworm
RUN apt update && apt install git
RUN git clone https://github.com/bepass-org/wireguard-go.git /wireguard-go
WORKDIR /wireguard-go
RUN go build
EXPOSE 8086
CMD ["/wireguard-go/warp-plus", "-b", "0.0.0.0:8086"]
