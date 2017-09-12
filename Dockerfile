FROM tomcat
FROM maven
RUN echo $PWD
RUN ["mvn", "verify"]
COPY target/*.war /usr/local/tomcat/webapps
