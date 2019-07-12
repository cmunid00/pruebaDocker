FROM ibmcom/db2express-c:10.5.0.5-3.10.0

RUN useradd christian
RUN echo "christian:christian" | paso

COPY entrypoint.sh /
COPY init.sql /

ENTRYPOINT ["/entrypoint.sh"]
