#
#--------------------------------------------------------------------------
# hfish 2.4-client
#--------------------------------------------------------------------------
#

FROM chinayin/debian:buster-slim

ENV HFISH_VERSION 2.4.1

RUN set -eux; \
  install_packages curl net-tools wget telnet iputils-ping vim; \
  #
  mkdir -p /opt/hfish/client;

ARG CLIENT_URL
RUN set -eux; \
  cd /opt/hfish/client; \
  curl -k ${CLIENT_URL} -o client; \
  chmod a+x client;

EXPOSE 21 22 23 69 3306 5900 6379 7879 8080 8081 8989 9000 9001 9200 11211

WORKDIR /opt/hfish/client

CMD [ "./client" ]
