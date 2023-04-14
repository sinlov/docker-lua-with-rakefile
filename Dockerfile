# This dockerfile uses extends image https://hub.docker.com/_/alpine
# VERSION 1
# Author: sinlov
# dockerfile offical document https://docs.docker.com/engine/reference/builder/
# maintainer="https://github.com/sinlov/docker-lua-with-rakefile"

# https://hub.docker.com/r/nickblah/lua/tags
FROM nickblah/lua:5.4.3-alpine3.12

#USER root

RUN apk --no-cache add ca-certificates bash ruby && \
  rm -rf /var/cache/apk/* /tmp/* && \
  gem install rake && \
  gem cleanup