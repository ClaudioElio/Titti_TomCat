FROM tomcat
FROM maven
RUN ["find", ". > /tmp/xcd"]
RUN ["mvn", "verify"]
COPY target/*.war /usr/local/tomcat/webapps
