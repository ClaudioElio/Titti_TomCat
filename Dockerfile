FROM tomcat
FROM maven
RUN echo $PWD
RUN ls -la /usr/
RUN ["mvn", "verify"]
COPY target/*.war /usr/local/tomcat/webapps
