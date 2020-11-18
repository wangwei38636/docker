#/bin/sh

docker stop jenkins
docker rm jenkins

docker run --name jenkins \
--restart always \
-u root \
-p 9101:8080 -p 50000:50000 \
-v ~/data/docker/jenkins/jenkins_home:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
-v ~/.m2:/root/.m2 \
-v ~/data/docker/jenkins/war/jenkins.war:/usr/share/jenkins/jenkins.war \
-d jenkinsci/blueocean
