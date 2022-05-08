# Pull base image 
#From tomcat:8-jre8 
DOCKER_IMAGE=Barkha/tomcat:8-jre8
# Maintainer 
#MAINTAINER "valaxytech@gmail.com"
MAINTAINER "Barkha Soni"
COPY ./webapp.war /usr/local/tomcat/webapps
docker ps -q --filter ancestor=$DOCKER_IMAGE 
docker run -d -p 8080:8080 $DOCKER_IMAGE
