FROM debian:bookworm

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y mariadb-server && \
    apt-get clean

COPY init.sh /init.sh
RUN chmod +x /init.sh

CMD ["/init.sh"]
