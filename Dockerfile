FROM tomcat:8.5.83-jdk8
ADD ./target/*.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
EXPOSE 8080
