export LATEST_ARTIFACT=$(find ~/myagent -name 'mrp.war' | grep drop | xargs ls -ltr | tail -1 | awk '{print $9}')
mv $LATEST_ARTIFACT .
sudo docker build --rm -t koemu/webapp .
sudo docker login --username=koemu --password=56805181 --email=netuser@mx.koemu.com
sudo docker push koemu/webapp
