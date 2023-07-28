#!/bin/bash

docker build -t soulteary/sdxl:all . -f docker/Dockerfile.one-click

docker build -t soulteary/sdxl:all-xformers . -f docker/Dockerfile.one-click-xformers