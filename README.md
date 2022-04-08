# HFish 安全、可靠、简单、免费的企业级蜜罐

[![Docker Image CI](https://github.com/chinayin-docker/hfish/actions/workflows/ci.yml/badge.svg?event=schedule)](https://github.com/chinayin-docker/hfish/actions/workflows/ci.yml)
![Docker Image Version (latest semver)](https://img.shields.io/docker/v/chinayin/hfish?sort=semver)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/chinayin/hfish?sort=semver)
![Docker Pulls](https://img.shields.io/docker/pulls/chinayin/hfish)

安全、可靠、简单、免费的企业级蜜罐（永久免费)

- 官网：https://hfish.io
- 文档：https://hfish.io/docs

HFish承载了全新的架构理念和实现方案，增加了蜜罐在威胁情报和诱捕溯源领域的能力，帮助企业在红蓝对抗中自动化的对攻击者进行画像和追溯。

此外，我们将重点关注企业安全场景，从攻击、处置、溯源角度提升产品联通能力。从威胁分析、告警策略与办公管理多方面出发，为企业用户提供更高的可用性与可拓展性。

我们深知企业环境特殊性，为了便于快速部署和敏捷管理，HFish提供了一系列方便运维和管理的技术，包括：一键闪电部署、应用模板批量管理、节点服务动态调整等特性……

#### HFish当前具备如下几个特点：

- 安全可靠：主打低中交互蜜罐，简单有效；
- 蜜罐丰富：支持SSH、FTP、TFTP、MySQL、Redis、Telnet、VNC、Memcache、Elasticsearch、Wordpress、OA系统等10多种蜜罐服务，支持用户制作自定义Web蜜罐；
- 开放透明：支持对接微步在线X社区API、五路syslog输出、支持邮件、钉钉、企业微信、飞书、自定义WebHook告警输出；
- 快捷管理：支持单个安装包批量部署，支持批量修改端口和服务；
- 跨平台：支持Linux x32/x64/ARM、Windows x32/x64平台

# Usage

You can use the image directly, e.g.

```
docker run --rm -it chinayin/hfish:2.6
docker run --rm -it chinayin/hfish:2.6-client
```

The images are built daily and have the security release enabled, so will contain any security updates released more
than 24 hours ago.

You can also use the images as a base for your own Dockerfile:

```
FROM chinayin/hfish:2.6
FROM chinayin/hfish:2.6-client
```

Launch the containers using `Docker Compose`:

```
docker-compose up -d
```
