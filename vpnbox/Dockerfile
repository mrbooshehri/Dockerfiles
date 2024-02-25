# Base Image ###########################
FROM debian:bullseye-slim

# Variables ############################
ARG USERNAME=vpnbox
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Pre-configs ##########################
RUN groupadd -g $USER_GID $USERNAME
RUN useradd -m -u $USER_UID -g $USER_GID -s /bin/bash $USERNAME

# Install requaired packages ###########
RUN apt-get -y update
RUN apt-get -y install vim tmux python python3-pip openssh-client network-manager-fortisslvpn network-manager-l2tp \
	network-manager-openvpn openconnect network-manager-pptp fzf net-tools curl sshpass telnet bsdmainutils
RUN pip install chromaterm
RUN curl https://raw.githubusercontent.com/mrbooshehri/cmd-fuzzy-ssh/master/fuzzy-ssh > /bin/fuzzy-ssh
RUN chmod 755 /bin/fuzzy-ssh
RUN curl https://raw.githubusercontent.com/mrbooshehri/dot/work/scripts/forti-selector > /bin/forti-selector
RUN chmod 755 /bin/forti-selector
RUN curl https://raw.githubusercontent.com/mrbooshehri/dot/work/scripts/tunnel > /bin/tunnel
RUN chmod 755 /bin/forti-selector
RUN mkdir /home/$USERNAME/.config

# Change username ######################
USER $USERNAME

# Run command ##########################
CMD ["/bin/bash"]
