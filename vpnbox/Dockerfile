FROM debian:bullseye-slim

RUN apt-get -y update
RUN apt-get -y install vim tmux python python3-pip openssh-client network-manager-fortisslvpn network-manager-l2tp \
	network-manager-openvpn openconnect network-manager-pptp fzf net-tools curl sshpass telnet bsdmainutils
RUN pip install chromaterm
RUN curl https://raw.githubusercontent.com/mrbooshehri/cmd-fuzzy-ssh/master/fuzzy-ssh > /bin/fuzzy-ssh
RUN chmod u+x /bin/fuzzy-ssh

CMD ["/bin/bash"]
