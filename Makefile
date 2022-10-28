
default:
	echo build - build docker

build:
	docker build -f Dockerfile container -t rust-plus:latest

run:
	docker run -it --rm rust-plus:latest

