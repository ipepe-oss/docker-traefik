FROM traefik:v1.7.34-alpine
MAINTAINER docker@ipepe.pl
COPY ./certs/ /opt/traefik/certs/
ADD traefik.toml /traefik.toml
RUN mkdir /data &&  \
    touch /data/acme.json &&  \
    chmod 600 /data/acme.json && \
    chmod 644 /opt/traefik/certs/default.crt &&  \
    chmod 600 /opt/traefik/certs/default.key
