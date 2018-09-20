#Pull Base Image for Tomcat 8
FROM tomcat:8-jre8

MAINTAINER "Arun.Sisodiya@diconium.com"

COPY devOps.war /usr/local/tomcat/webapps/