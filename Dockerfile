FROM tomcat
FROM maven
CMD find . | xargs grep "titti"
RUN ["mvn", "verify"]
COPY target/*.war /usr/local/tomcat/webapps
