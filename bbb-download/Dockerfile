FROM ubuntu:latest
RUN apt update
RUN apt -y install python3 python3-pip python3-venv git
WORKDIR /bbb
RUN git clone https://github.com/fossasia/bbb-download .
RUN python3 -m venv venv
RUN pip install -r requirements.txt
EXPOSE 8080
VOLUME /bbb/presentation
