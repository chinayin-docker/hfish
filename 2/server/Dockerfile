#
#--------------------------------------------------------------------------
# hfish 2.6.1-server
#--------------------------------------------------------------------------
#

FROM chinayin/debian:bullseye-slim

ENV HFISH_VERSION 2.6.1

RUN set -eux; \
  install_packages curl net-tools wget telnet iputils-ping vim; \
  #
  curl -fskSL -o hfish.tgz "https://hfish.cn-bj.ufileos.com/hfish-${HFISH_VERSION}-linux-amd64.tar.gz"; \
  mkdir -p /opt/hfish; \
  tar -zxvf hfish.tgz -C /opt/hfish; \
  rm -f hfish.tgz; \
  cat /opt/hfish/version;

EXPOSE 4433 4434

WORKDIR /opt/hfish

CMD [ "./server" ]
