#!/bin/bash
cd "$(dirname $0)"
#kubectl create namespace crapi
#kubectl apply -f https://raw.githubusercontent.com/rancher/local-path-provisioner/master/deploy/local-path-storage.yaml

kubectl create secret generic jwt-key-secret --from-file=../keys
#kubectl apply  -f ./rbac
kubectl apply  -f ./mongodb
kubectl apply  -f ./postgres
kubectl apply  -f ./mailhog
kubectl apply  -f ./identity
kubectl apply  -f ./community
kubectl apply  -f ./workshop
kubectl apply  -f ./web
