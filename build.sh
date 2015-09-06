LATEST_ARTIFACT=/home/team4/myagent/_work/build/07b0c7f395008351ee66266376a333dbeac3851428d13a83f2cee4d54f076910/staging/drop/JavaEE7-App-On-Docker-1.0-SNAPSHOT.war
cp -pf $LATEST_ARTIFACT .

sudo docker build --rm -t koemu/webapp .
sudo docker login --username=koemu --password=56805181 --email=netuser@mx.koemu.com
sudo docker push koemu/webapp
