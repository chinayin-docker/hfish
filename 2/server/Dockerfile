#
#--------------------------------------------------------------------------
# hfish 2.6-server
#--------------------------------------------------------------------------
#

FROM chinayin/debian:bullseye-slim

ENV HFISH_VERSION 2.6.2

RUN set -eux; \
  install_packages curl net-tools wget telnet iputils-ping vim; \
  arch="$(dpkg --print-architecture)"; \
	case "$arch" in \
		'amd64') \
			downloadUrl='https://hfish.cn-bj.ufileos.com/hfish-${HFISH_VERSION}-linux-amd64.tar.gz'; \
			;; \
		'arm64') \
			downloadUrl='https://hfish.cn-bj.ufileos.com/hfish-${HFISH_VERSION}-linux-arm64.tar.gz'; \
			;; \
		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; \
	esac; \
  #
  curl -fskSL -o hfish.tgz "$downloadUrl"; \
  mkdir -p /opt/hfish /opt/hfish/tmp; \
  tar -zxvf hfish.tgz -C /opt/hfish; \
  rm -f hfish.tgz; \
  cat /opt/hfish/version;

EXPOSE 4433 4434

WORKDIR /opt/hfish

CMD [ "./server" ]
