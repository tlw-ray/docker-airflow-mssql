#!/usr/bin/env bash

docker stop zh_test
docker rmi zh:test
docker build . -t zh:test
