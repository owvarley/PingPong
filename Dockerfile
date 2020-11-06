FROM debian:buster-slim

RUN apt-get update
RUN apt-get install -y iputils-ping

COPY poll_server.sh /home/poll_server.sh
RUN chmod +x /home/poll_server.sh

ENTRYPOINT ["/home/poll_server.sh", "google.com"]