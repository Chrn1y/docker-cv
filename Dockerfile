FROM debian:10.3

RUN apt-get update

COPY . .
WORKDIR CV
CMD ["ls"]