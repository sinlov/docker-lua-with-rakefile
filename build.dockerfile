# This dockerfile uses extends image https://hub.docker.com/_/alpine
# VERSION 1
# Author: sinlov
# dockerfile offical document https://docs.docker.com/engine/reference/builder/
# maintainer="https://github.com/sinlov/docker-lua-with-rakefile"

# https://hub.docker.com/r/nickblah/lua/tags
FROM nickblah/lua:5.4.7

#USER root

# add component with: mirrors.aliyun.com
RUN cp /etc/apt/sources.list /etc/apt/sources.list.old \
  && sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list \
  && sed -i 's/security.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list

# add component
RUN apt update \
  && apt install -y ca-certificates bash make ruby \
  && apt autoclean -y \
  && apt clean -y \
  && apt autoremove -y \
  && rm -rf /var/lib/apt/lists/*