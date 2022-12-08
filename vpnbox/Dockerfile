FROM alpine:latest

RUN echo -e "#https://dl-cdn.alpinelinux.org/alpine/v3.16/main\
\n#https://dl-cdn.alpinelinux.org/alpine/v3.16/community\
\nhttp://dl-cdn.alpinelinux.org/alpine/edge/main\
\nhttp://dl-cdn.alpinelinux.org/alpine/edge/community\ 
\nhttp://dl-cdn.alpinelinux.org/alpine/edge/testing" > /etc/apk/repositories
RUN cat /etc/apk/repositories
RUN apk update
RUN apk add bash vim git tmux openssh openfortivpn openconnect networkmanager-l2tp \
	pptpclient networkmanager-openvpn

CMD ["/bin/bash"]
