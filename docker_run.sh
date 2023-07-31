#!/bin/bash

docker build . -t catalog-diff-viewer && docker run --rm -ti \
	-p 8080:80 \
	-v catalog-reports:/usr/share/nginx/html/data \
	catalog-diff-viewer
