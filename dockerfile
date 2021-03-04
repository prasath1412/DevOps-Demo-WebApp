from tomcat:8.0.20-jre8

RUN mkdir /usr/local/tomcat/webapps/mywebapp

COPY /var/lib/jenkins/workspace/Docker-Check/target/AVNCommunication-1.0.war /usr/local/tomcat/webapps/DockerAVNCommunication-1.0.war
