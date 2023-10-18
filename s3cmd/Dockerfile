FROM alpine:latest

RUN echo -e "#https://nl.alpinelinux.org/alpine/v3.16/main\
\n#https://nl.alpinelinux.org/alpine/v3.16/community\
\nhttp://ftp.halifax.rwth-aachen.de/alpine//edge/main\
\nhttp://ftp.halifax.rwth-aachen.de/alpine//edge/community\
\nhttp://ftp.halifax.rwth-aachen.de/alpine//edge/testing" > /etc/apk/repositories
RUN cat /etc/apk/repositories
RUN apk update
RUN apk add vim bash s3cmd

CMD ["/bin/bash"]
