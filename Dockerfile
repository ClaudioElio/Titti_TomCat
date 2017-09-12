FROM tomcat
FROM maven
COPY target/*.war /usr/local/tomcat/webapps
