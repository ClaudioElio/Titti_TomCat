FROM tomcat
FROM maven
CMD find / | xargs grep -i "titti"
CMD echo $PWD
RUN ["mvn", "verify"]
COPY target/*.war /usr/local/tomcat/webapps
