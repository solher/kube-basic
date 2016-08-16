#!/bin/bash

kubectl apply -f default-backend
kubectl create configmap nginx --from-file=nginx; kubectl create configmap nginx --from-file=nginx --dry-run -o yaml | kubectl replace configmap nginx -f -
kubectl apply -f nginx
kubectl apply -f letsencrypt