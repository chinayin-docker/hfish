#
#--------------------------------------------------------------------------
# hfish 0.6.5-alpine
#--------------------------------------------------------------------------
#

FROM alpine:latest

ENV GLIBC_VERSION 2.29-r0
ENV HFISH_VERSION 0.6.5

ARG CHANGE_SOURCE=true
ARG TIMEZONE=Asia/Shanghai
RUN set -eux; \
    if [ ${CHANGE_SOURCE} = true ]; then \
      sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/' /etc/apk/repositories \
    ;fi; \
    apk update; \
    apk add --no-cache --virtual .build-deps tzdata; \
    cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime && echo "${TIMEZONE}" > /etc/timezone; \
    apk del .build-deps; \
    rm -rf /var/cache/apk/*;

COPY files/HFish.tgz /tmp/HFish.tgz
COPY entrypoint.sh /entrypoint.sh

# Download and install glibc
RUN set -eux; \
  apk add --no-cache --virtual .build-deps curl mysql-client; \
  curl -Lo /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub; \
  curl -Lo glibc.apk "https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-${GLIBC_VERSION}.apk"; \
  curl -Lo glibc-bin.apk "https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-bin-${GLIBC_VERSION}.apk"; \
  apk add --no-cache glibc-bin.apk glibc.apk; \
  #
  tar -zxvf /tmp/HFish.tgz -C /opt; \
  rm -f /tmp/HFish.tgz; \
  #
  rm -rf glibc.apk glibc-bin.apk /var/cache/apk/*;

EXPOSE 21 22 23 69 3306 5900 6379 7879 8080 8081 8989 9000 9001 9200 11211

WORKDIR /opt

ENTRYPOINT ["/entrypoint.sh"]
