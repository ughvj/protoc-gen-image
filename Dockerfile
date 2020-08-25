FROM golang:1.14

WORKDIR /go/src/proto

RUN apt-get update && apt-get install unzip
RUN curl -OL https://github.com/google/protobuf/releases/download/v3.13.0/protoc-3.13.0-linux-x86_64.zip
RUN unzip protoc-3.13.0-linux-x86_64.zip -d protoc3
RUN mv protoc3/bin/* /usr/local/bin/
RUN mv protoc3/include/* /usr/local/include/
RUN go get -u google.golang.org/grpc
RUN go get -u github.com/golang/protobuf/protoc-gen-go
