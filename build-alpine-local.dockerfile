# This dockerfile uses extends image https://hub.docker.com/_/alpine
# VERSION 1
# Author: sinlov
# dockerfile offical document https://docs.docker.com/engine/reference/builder/
# maintainer="https://github.com/sinlov/docker-lua-with-rakefile"

# https://hub.docker.com/r/nickblah/lua/tags
FROM nickblah/lua:5.4.4-alpine

#USER root

# add alpine component with: mirrors.aliyun.com
RUN cp /etc/apk/repositories /etc/apk/repositories.bak && \
  sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
  apk --no-cache add ca-certificates bash make ruby && \
  rm -rf /var/cache/apk/* /tmp/*

# proxy gem as gems.ruby-china.com
RUN gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
RUN gem install rake && gem cleanup