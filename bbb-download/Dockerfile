FROM python:3-alpine
RUN apk add git
WORKDIR /bbb
RUN git clone https://github.com/fossasia/bbb-download . \
 && python3 -m venv venv \
 && pip install -r requirements.txt
EXPOSE 8080
VOLUME /bbb/presentation
