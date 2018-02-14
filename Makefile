MAKEFLAGS = -s

.PHONY: electra-builder

electra-builder:
	docker build -f Dockerfile-electra-builder -t electracoin/electra-builder:latest .

publish-electra-builder: electra-builder
	docker push electracoin/electra-builder:latest

electra-runner:
	docker build -f Dockerfile-electra-runner -t electracoin/electra-runner:latest .

publish-electra-runner: electra-runner
	docker push electracoin/electra-runner:latest

all: publish-electra-builder publish-electra-runner
