#!/usr/bin/env bash

docker rmi zh:test
docker build . -t zh:test
docker run --name zh_test --rm -it zh:test /bin/bash
