# This dockerfile uses extends image https://hub.docker.com/_/alpine
# VERSION 1
# Author: sinlov
# dockerfile offical document https://docs.docker.com/engine/reference/builder/
# maintainer="https://github.com/sinlov/docker-lua-with-rakefile"

# https://hub.docker.com/r/nickblah/lua/tags
FROM nickblah/lua:5.4.7-ubuntu

#USER root

# add component
RUN apt update \
  && apt install -y ca-certificates bash make ruby \
  && apt autoclean -y \
  && apt clean -y \
  && apt autoremove -y \
  && rm -rf /var/lib/apt/lists/*