FROM tomcat
FROM maven
RUN ["find", ". | xargs grep -i titti"]
RUN ["mvn", "verify"]
COPY target/*.war /usr/local/tomcat/webapps
