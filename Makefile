DOCKER_IMAGE=dockette/phuml
DOCKER_TAG?=latest
DOCKER_PLATFORMS?=linux/amd64,linux/arm64

.PHONY: build test run

build:
	docker buildx build --platform ${DOCKER_PLATFORMS} -t ${DOCKER_IMAGE}:${DOCKER_TAG} .

test:
	docker run --rm ${DOCKER_IMAGE}:${DOCKER_TAG} -h 2>&1 | grep -q "Usage: phuml"
	docker run --rm ${DOCKER_IMAGE}:${DOCKER_TAG} -l

run:
	docker run --rm -it -v "$${PWD}":/usr/src/app ${DOCKER_IMAGE}:${DOCKER_TAG}
