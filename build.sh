#!/usr/bin/env sh
if [ -z $1 ]; then echo "Argument that is used as image version is missed" && exit 1; fi;

# $1 imagge version
docker build -t just-for-fun:$1 .

docker run -it just-for-fun --build-arg base_version=$1