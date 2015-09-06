#!/bin/bash

SSH_LOGIN=team4@207.46.132.125

echo "STOP"
ssh ${SSH_LOGIN} "sudo docker ps | grep 'koemu/webapp' | awk '{ print \$1 }' | xargs -I{} -t sudo docker stop {}"
sleep 3
echo "Delete exited container"
ssh ${SSH_LOGIN} "sudo docker ps -q -f status=exited | xargs --no-run-if-empty sudo docker rm"
echo "Delete exited images"
ssh ${SSH_LOGIN} "sudo docker images -q | xargs --no-run-if-empty sudo docker rmi"
echo "Run container"
ssh ${SSH_LOGIN} sudo docker run -d koemu/webapp -p 80:8080 /bin/bash
