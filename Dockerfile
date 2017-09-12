FROM tomcat
FROM maven
RUN ["find", "."]
RUN ["mvn", "verify"]
COPY target/*.war /usr/local/tomcat/webapps
