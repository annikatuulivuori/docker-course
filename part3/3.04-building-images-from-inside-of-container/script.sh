#!/bin/bash

GITHUB_REPO=$1
DOCKERHUB_REPO=$2

REPO_NAME=$(basename "$GITHUB_REPO")

git clone https://github.com/"$GITHUB_REPO".git

cd "$REPO_NAME"

docker build -t anskubansku/"$DOCKERHUB_REPO":latest .

docker push "$DOCKERHUB_REPO":latest
