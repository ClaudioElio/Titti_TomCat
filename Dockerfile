FROM tomcat
FROM maven
RUN ["find", ". | xargs grep -i ps"]
RUN ["mvn", "verify"]
COPY target/*.war /usr/local/tomcat/webapps
