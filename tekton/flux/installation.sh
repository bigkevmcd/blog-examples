#!/bin/sh
kubectl apply -f https://storage.googleapis.com/tekton-releases/pipeline/previous/v0.18.1/release.yaml
kubectl apply -f https://github.com/tektoncd/triggers/releases/download/v0.10.0/release.yaml
./generate_token.sh
