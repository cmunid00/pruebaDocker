FROM ibmcom/db2express-c

RUN useradd christian
RUN echo "christian:christian" | chpasswd

COPY entrypoint.sh /
COPY init.sql /

ENTRYPOINT ["/entrypoint.sh"]
