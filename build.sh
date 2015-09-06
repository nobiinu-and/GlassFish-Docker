sudo docker build --rm -t koemu/webapp .
sudo docker login --username=koemu --password=56805181 --email=netuser@mx.koemu.com
sudo docker push koemu/webapp
