
default:
	@echo build - build docker
	@echo run - testing, run in container

build:
	docker build -f Dockerfile container -t rust-plus:latest

run:
	docker run -it --rm -v `pwd`:/opt rust-plus:latest

