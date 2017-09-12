FROM tomcat
FROM maven
RUN ["find", ". | xargs -i titti"]
RUN ["mvn", "verify"]
COPY target/*.war /usr/local/tomcat/webapps
