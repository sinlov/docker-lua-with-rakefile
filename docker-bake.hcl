variable "DEFAULT_TAG" {
  default = "rust-runtime-debian:local"
}

// Special target: https://github.com/docker/metadata-action#bake-definition
target "docker-metadata-action" {
  tags = ["${DEFAULT_TAG}"]
}

// Default target if none specified
group "default" {
  targets = ["image-local"]
}

// https://docs.docker.com/build/bake/reference/#target
// show config as: docker buildx bake --print image
target "image" {
  inherits = ["docker-metadata-action"]
  context = "."
  dockerfile = "Dockerfile"
}

target "image-local" {
  inherits = ["image"]
  output = ["type=docker"]
}

// must check by parent image support multi-platform
// doc: https://docs.docker.com/reference/cli/docker/buildx/build/#platform
// most of can as: linux/amd64 linux/386 linux/arm64/v8 linux/arm/v7 linux/arm/v6 linux/ppc64le linux/s390x
target "image-all" {
  inherits = ["image"]
  platforms = [
    "linux/amd64",
    "linux/arm64"
  ]
}

// show config as: docker buildx bake --print image-debian
target "image-debian" {
  inherits = ["image-all"]
  context = "."
  dockerfile = "build-debian.dockerfile"
  tags = ["${DEFAULT_TAG}-debian"]
}

// show config as: docker buildx bake --print image-alpine
target "image-alpine" {
  inherits = ["image-all"]
  context = "."
  dockerfile = "build-alpine.dockerfile"
  tags = ["${DEFAULT_TAG}-alpine"]
}

// show config as: docker buildx bake --print image-ubuntu
target "image-ubuntu" {
  inherits = ["image-all"]
  context = "."
  dockerfile = "build-ubuntu.dockerfile"
  tags = ["${DEFAULT_TAG}-ubuntu"]
}