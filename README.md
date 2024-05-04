
[![ci](https://github.com/sinlov/docker-lua-with-rakefile/actions/workflows/ci.yml/badge.svg)](https://github.com/sinlov/docker-lua-with-rakefile/actions/workflows/ci.yml)

[![GitHub license](https://img.shields.io/github/license/sinlov/docker-lua-with-rakefile)](https://github.com/sinlov/docker-lua-with-rakefile)
[![GitHub latest SemVer tag)](https://img.shields.io/github/v/tag/sinlov/docker-lua-with-rakefile)](https://github.com/sinlov/docker-lua-with-rakefile/tags)
[![GitHub release)](https://img.shields.io/github/v/release/sinlov/docker-lua-with-rakefile)](https://github.com/sinlov/docker-lua-with-rakefile/releases)

# docker-lua-with-rakefile

[![docker version semver](https://img.shields.io/docker/v/sinlov/docker-lua-with-rakefile?sort=semver)](https://hub.docker.com/r/sinlov/docker-lua-with-rakefile)
[![docker image size](https://img.shields.io/docker/image-size/sinlov/docker-lua-with-rakefile)](https://hub.docker.com/r/sinlov/docker-lua-with-rakefile)
[![docker pulls](https://img.shields.io/docker/pulls/sinlov/docker-lua-with-rakefile)](https://hub.docker.com/r/sinlov/docker-lua-with-rakefile/tags?page=1&ordering=last_updated)

## for

- lua image run as rakefile parent image
  - semver latest [![Docker Image Version (tag)](https://img.shields.io/docker/v/nickblah/lua/latest?style=social&label=nickblah%2Flua)](https://hub.docker.com/r/nickblah/lua/tags)
  - semver-debian [![Docker Image Version (tag)](https://img.shields.io/docker/v/nickblah/lua/debian?style=social&label=nickblah%2Flua)](https://hub.docker.com/r/nickblah/lua/tags?name=debian)
  - semver-alpine [![Docker Image Version (tag)](https://img.shields.io/docker/v/nickblah/lua/alpine?style=social&label=nickblah%2Flua)](https://hub.docker.com/r/nickblah/lua/tags?name=alpine)
  - semver-ubuntu [![Docker Image Version (tag)](https://img.shields.io/docker/v/nickblah/lua/ubuntu?style=social&label=nickblah%2Flua)](https://hub.docker.com/r/nickblah/lua/tags?name=ubuntu)

### feature

- docker hub see https://hub.docker.com/r/sinlov/docker-lua-with-rakefile

- `5.4.5`
  - support `debian` `alpine` `ubuntu`
  - add `make`

### fast use


```bash
# use as tty
docker run --rm -it \
  --entrypoint /bin/sh \
  --name "test-docker-lua-with-rakefile" \
  sinlov/docker-lua-with-rakefile:latest

# see kit versions
docker run --rm \
  sinlov/docker-lua-with-rakefile:latest \
  bash -c ' \
  uname -asrm && \
  cat /etc/os-release && \
  make --version && \
  ruby --version && \
  rake --version && \
  lua -v '
```

## source repo

[https://github.com/sinlov/docker-lua-with-rakefile](https://github.com/sinlov/docker-lua-with-rakefile)

## source usage

## Contributing

[![Contributor Covenant](https://img.shields.io/badge/contributor%20covenant-v1.4-ff69b4.svg)](.github/CONTRIBUTING_DOC/CODE_OF_CONDUCT.md)
[![GitHub contributors](https://img.shields.io/github/contributors/sinlov/docker-lua-with-rakefile)](https://github.com/sinlov/docker-lua-with-rakefile/graphs/contributors)

We welcome community contributions to this project.

Please read [Contributor Guide](.github/CONTRIBUTING_DOC/CONTRIBUTING.md) for more information on how to get started.

请阅读有关 [贡献者指南](.github/CONTRIBUTING_DOC/zh-CN/CONTRIBUTING.md) 以获取更多如何入门的信息

### dev mode

```bash
# check env
make dockerEnv

# change Dockerfile.s6
# then test image
make dockerTestRestartLatest
# remove test image
make dockerTestPruneLatest
```

then change github workflows config
