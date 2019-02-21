.PHONY: help

help: ## help menu
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

CURDIR = $(shell pwd)
DOCKER_IMAGE = $(shell basename $(CURDIR))

build: ## build the container
	docker build -t $(DOCKER_IMAGE) -f dockerfiles/Dockerfile .

run: ## run the container
	docker run -v $(CURDIR):/workdir -it $(DOCKER_IMAGE)

echo: ## for testing
	echo $(DOCKER_IMAGE)
