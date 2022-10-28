
default:
	@echo build - build docker
	@echo run - testing, run in container

build:
	docker build -f Dockerfile container -t rust-plus:latest

run:
	docker run -it --rm -v `pwd`:/opt rust-plus:latest

build-smol:
	docker build -f smol.Dockerfile container -t smol:latest

run-smol:
	docker run -it --rm -v `pwd`:/opt smol:latest
