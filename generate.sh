for file in `\find . -maxdepth 1 -type f`; do
  if [[ $file =~ ^.*\.proto$ ]];
  then
    docker container run --rm -v $(pwd):/go/src/proto protoc-gen protoc --go_out=plugins=grpc:./ $file
  fi
done