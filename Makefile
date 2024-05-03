.PHONY: test check clean dist all

TOP_DIR := $(shell pwd)

# default latest
ENV_DIST_VERSION =latest
ROOT_NAME =docker-lua-with-rakefile

# MakeDocker.mk settings start
ROOT_OWNER =sinlov
ROOT_PARENT_SWITCH_TAG :=5.4.4
# for image local build
INFO_TEST_BUILD_DOCKER_PARENT_IMAGE =nickblah/lua
INFO_BUILD_DOCKER_FILE =Dockerfile
INFO_TEST_BUILD_DOCKER_FILE =build.dockerfile
INFO_TEST_BUILD_DOCKER_CONTAINER_ENTRYPOINT =/bin/bash
INFO_TEST_BUILD_DOCKER_CONTAINER_ARGS =
# INFO_TEST_BUILD_DOCKER_PARENT_USER =--user root:root
# MakeImage.mk settings end

include z-MakefileUtils/MakeImage.mk

env: dockerEnv

all: dockerTestRestartLatest

clean: dockerTestPruneLatest

bakeCheckConfigImageAll:
	$(info docker bake: image-all)
	docker buildx bake --print image-all

bakeCheckConfigImageAlpine:
	$(info docker bake: image-alpine)
	docker buildx bake --print image-alpine

bakeCheckConfigImageDebian:
	$(info docker bake: image-debian)
	docker buildx bake --print image-debian

bakeCheckConfigImageUbuntu:
	$(info docker bake: image-ubuntu)
	docker buildx bake --print image-ubuntu

bakeCheckConfigAll: bakeCheckConfigImageAll bakeCheckConfigImageAlpine bakeCheckConfigImageDebian bakeCheckConfigImageUbuntu

help: helpDocker
	@echo "Before run this project in docker must install docker"
