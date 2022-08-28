FROM ubuntu:latest
RUN apt-get update \
 && apt-get -y install --no-install-recommands \
 python3 python3-pip python3-venv git \
 && rm -rf /var/lib/apt/lists/* 
WORKDIR /bbb
RUN git clone https://github.com/fossasia/bbb-download . \
 && python3 -m venv venv \
 && pip install -r requirements.txt
EXPOSE 8080
VOLUME /bbb/presentation
