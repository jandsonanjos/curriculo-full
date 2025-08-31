#!/bin/bash
while true; do 
docker rm -f meu-site 2>/dev/null
    #docker build -t meu-site .
    #docker run -d -p 8080:80 -v $(pwd):/usr/share/nginx/html --name meu-site meu-site
    #echo "Container rodando! Acesse http://localhost:8080"
echo "Em caso de erro execute: "
docker build -t meu-site . && \
docker run -d -p 8080:80 --name meu-site meu-site
sleep 5
    #todos os comando dentro do diretório raiz
done
