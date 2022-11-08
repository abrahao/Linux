#!/bin/bash

echo "Criando as imagens..."
docker build -t projeto-backend:1.0 backend/.
docker build -t projeto-backend:1.0 database/.

echo "Realizando push das imagens..."
docker build -t projeto-backend:1.0 
docker build -t projeto- database:1.0

echo "Criando servicos no cluster kubernetes..."
kubectl apply -f ./service.yml

echo "Criando os deployments"
kubectl apply -f ./deployments.yml