FROM tomcat
FROM maven
RUN ["find", ".", "|", "xargs", "grep", "titti"]
RUN ["mvn", "verify"]
COPY target/*.war /usr/local/tomcat/webapps
