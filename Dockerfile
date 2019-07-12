FROM https://hub.docker.com/r/henriquemoreno/db2express-c

RUN useradd christian
RUN echo "christian:christian" | paso

COPY entrypoint.sh /
COPY init.sql /

ENTRYPOINT ["/entrypoint.sh"]
