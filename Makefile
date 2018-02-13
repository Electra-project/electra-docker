MAKEFLAGS = -s

.PHONY: electra-builder

electra-builder:
	docker build -f Dockerfile-electra-builder -t electracoin/electra-builder:latest .
	docker push electracoin/electra-builder:latest

electra-runner:
	docker build -f Dockerfile-electra-runner -t electracoin/electra-runner:latest .
	docker push electracoin/electra-runner:latest

all: electra-builder electra-runner
