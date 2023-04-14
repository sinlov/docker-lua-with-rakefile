
[![docker version semver](https://img.shields.io/docker/v/sinlov/docker-lua-with-rakefile?sort=semver)](https://hub.docker.com/r/sinlov/docker-lua-with-rakefile)
[![docker image size](https://img.shields.io/docker/image-size/sinlov/docker-lua-with-rakefile)](https://hub.docker.com/r/sinlov/docker-lua-with-rakefile)
[![docker pulls](https://img.shields.io/docker/pulls/sinlov/docker-lua-with-rakefile)](https://hub.docker.com/r/sinlov/docker-lua-with-rakefile/tags?page=1&ordering=last_updated)

# docker-lua-with-rakefile

- docker hub see https://hub.docker.com/r/sinlov/docker-lua-with-rakefile

## for

- lua image run as rakefile
  - parent image [![](https://img.shields.io/docker/v/nickblah/lua/alpine?label=nickblah%2Flua&style=social)](https://hub.docker.com/r/nickblah/lua)

- ruby 2.7.6p219
- rake, version 13.0.6

### fast use

```bash
docker run --rm -it \
  --entrypoint /bin/sh \
  --name "test-docker-lua-with-rakefile" \
  sinlov/docker-lua-with-rakefile:latest
```

## source repo

[https://github.com/sinlov/docker-lua-with-rakefile](https://github.com/sinlov/docker-lua-with-rakefile)

## source usage

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