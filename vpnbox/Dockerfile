FROM alpine:latest

# Add repositories
RUN echo -e "#https://nl.alpinelinux.org/alpine/v3.16/main\
\n#https://nl.alpinelinux.org/alpine/v3.16/community\
\nhttp://nl.alpinelinux.org/alpine/edge/main\
\nhttp://nl.alpinelinux.org/alpine/edge/community\ 
\nhttp://nl.alpinelinux.org/alpine/edge/testing" > /etc/apk/repositories
# Install packages
RUN apk update
RUN apk add bash vim git tmux openssh openfortivpn openconnect networkmanager-l2tp \
	pptpclient networkmanager-openvpn fzf; exit 0
# Set CMD
CMD ["/bin/bash"]
