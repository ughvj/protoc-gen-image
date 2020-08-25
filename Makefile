DIR=./
FILE=default.proto

build:
	docker image build -t protoc-gen .

proto:
	docker container run --rm -v ${DIR}:/go/src/proto protoc-gen protoc --go_out=plugins=grpc:./ ${FILE}