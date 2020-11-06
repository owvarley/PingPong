FROM debian:buster-slim

RUN apt-get update
RUN apt-get install -y iputils-ping

COPY poll_server.sh /home/poll_server.sh
RUN chmod +x /home/poll_server.sh

ENV TIME_BETWEEN_PINGS_S=30
ENV SERVER_A=google.com
ENV SERVER_B=google.com

ENTRYPOINT ["/home/poll_server.sh"]