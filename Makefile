MAKEFLAGS = -s

.PHONY: electra-builder

ELECTRA_BUILDER_VERSION=0.1
ELECTRA_RUNNER_VERSION=0.1

electra-builder:
	docker build -f Dockerfile-electra-builder -t electracoin/electra-builder:${ELECTRA_BUILDER_VERSION} .

publish-electra-builder: electra-builder
	docker push electracoin/electra-builder:${ELECTRA_BUILDER_VERSION}

publish-electra-builder-latest: publish-electra-builder
	docker tag electracoin/electra-builder:${ELECTRA_BUILDER_VERSION} electracoin/electra-builder:latest
	docker push electracoin/electra-builder:latest

electra-runner:
	docker build -f Dockerfile-electra-runner -t electracoin/electra-runner:${ELECTRA_RUNNER_VERSION} .

publish-electra-runner: electra-runner
	docker push electracoin/electra-runner:${ELECTRA_RUNNER_VERSION}
	#docker tag electracoin/electra-runner:${ELECTRA_RUNNER_VERSION} electracoin/electra-runner:latest

publish-electra-runner-latest: publish-electra-runner
	docker tag electracoin/electra-runner:${ELECTRA_RUNNER_VERSION} electracoin/electra-runner:latest
	docker push electracoin/electra-runner:latest

build-all: electra-builder electra-runner

publish-all: publish-electra-builder publish-electra-runner

all: publish-electra-builder-latest publish-electra-runner-latest
