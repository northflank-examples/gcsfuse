FROM ubuntu:latest

RUN apt update && \
  apt install -y wget fuse && \
  wget https://github.com/GoogleCloudPlatform/gcsfuse/releases/download/v3.8.0/gcsfuse_3.8.0_amd64.deb -O gcsfuse.deb && \
  dpkg -i gcsfuse.deb

WORKDIR /app

COPY ./fuse-demo.sh .

RUN chmod +x ./fuse-demo.sh

CMD ["./fuse-demo.sh"]
