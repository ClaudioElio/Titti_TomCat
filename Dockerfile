FROM tomcat
FROM maven
RUN ["ls"]
RUN ["mvn", "verify"]
COPY target/*.war /usr/local/tomcat/webapps
