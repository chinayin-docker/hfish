#
#--------------------------------------------------------------------------
# hfish 2.5-server
#--------------------------------------------------------------------------
#

FROM chinayin/debian:buster-slim

ENV HFISH_VERSION 2.5.0

RUN set -eux; \
  install_packages curl net-tools wget telnet iputils-ping vim; \
  #
  curl -fskSL -o hfish.tgz "https://hfish.cn-bj.ufileos.com/hfish-${HFISH_VERSION}-linux-amd64.tar.gz"; \
  mkdir -p /opt/hfish; \
  tar -zxvf hfish.tgz -C /opt/hfish; \
  rm -f hfish.tgz; \
  cat /opt/hfish/version;

COPY files /opt/hfish

RUN set -eux; \
  curl -fskSL -o services.tgz "https://img.threatbook.cn/hfish/svc/services-${HFISH_VERSION}.tar.gz"; \
  tar -zxvf services.tgz -C /tmp/; \
  ./opt/hfish/install_services.sh; \
  rm -f /opt/hfish/install_services.sh; \
  rm -f services.tgz; \
  rm -rf /tmp/services;

EXPOSE 4433 4434

WORKDIR /opt/hfish

CMD [ "./server" ]
