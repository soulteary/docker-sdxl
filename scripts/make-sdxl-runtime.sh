#!/bin/bash

docker build -t soulteary/sdxl . -f docker/Dockerfile.runtime

docker build -t soulteary/sdxl:xformers . -f docker/Dockerfile.runtime-xformers