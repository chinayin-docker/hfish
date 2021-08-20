# HFish Image

[![Docker Image CI](https://github.com/chinayin-docker/hfish/actions/workflows/ci.yml/badge.svg?event=schedule)](https://github.com/chinayin-docker/hfish/actions/workflows/ci.yml)
![Docker Image Version (latest semver)](https://img.shields.io/docker/v/chinayin/hfish?sort=semver)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/chinayin/hfish?sort=semver)
![Docker Pulls](https://img.shields.io/docker/pulls/chinayin/hfish)

安全、可靠、简单、免费的企业级蜜罐。

# Use hfish

You can use the image directly, e.g.

```
docker run --rm -it chinayin/hfish:2.5
docker run --rm -it chinayin/hfish:2.5-client
```

The images are built daily and have the security release enabled, so will contain any security updates released more
than 24 hours ago.

You can also use the images as a base for your own Dockerfile:

```
FROM chinayin/hfish:2.4
FROM chinayin/hfish:2.4-client
```
