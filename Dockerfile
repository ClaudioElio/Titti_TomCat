FROM tomcat
FROM maven
RUN ["mvn", "verify"]
COPY target/*.war /usr/local/tomcat/webapps
