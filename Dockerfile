FROM alpine:3.12.1
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="hireus@secureimages.dev"

ARG BLACKBOX_EXPORTER_VERSION=0.18.0

RUN wget -P /tmp/ https://github.com/prometheus/blackbox_exporter/releases/download/v${BLACKBOX_EXPORTER_VERSION}/blackbox_exporter-${BLACKBOX_EXPORTER_VERSION}.linux-amd64.tar.gz ;\
    tar -xvzf /tmp/blackbox_exporter-${BLACKBOX_EXPORTER_VERSION}.linux-amd64.tar.gz --strip-components=1 -C /tmp ;\
    mkdir -p /etc/blackbox_exporter ;\
    cp /tmp/blackbox.yml /etc/blackbox_exporter/config.yml ;\
    cp /tmp/blackbox_exporter /bin/blackbox_exporter ;\
    rm -rf /tmp/*

ADD data/ /

EXPOSE 9115

CMD ["/bin/blackbox_exporter", "--config.file=/etc/blackbox_exporter/config.yml"]
