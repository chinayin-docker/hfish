#
#--------------------------------------------------------------------------
# hfish 2.5-client
#--------------------------------------------------------------------------
#

FROM chinayin/debian:buster-slim

ENV HFISH_VERSION 2.5

RUN set -eux; \
  install_packages curl net-tools wget telnet iputils-ping vim; \
  #
  mkdir -p /opt/hfish/client;

COPY entrypoint.sh /entrypoint.sh

EXPOSE 21 22 23 69 80 443 3306 5900 6379 8080 8081 8989 9000 9001 9090 9096 9200 11211

WORKDIR /opt/hfish/client

ENTRYPOINT ["/entrypoint.sh"]
