#!/bin/sh
TOKEN=$(head -c 12 /dev/urandom | shasum | cut -d ' ' -f1)
echo $TOKEN

kubectl create secret generic generic-receiver-token -n flux-system \
  --from-literal=token=$TOKEN
