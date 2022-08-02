
FROM tomcat:9.0

ADD target/*.war /usr/local/tomcat/webapps

EXPOSE 8180
 # OPEN THIS PORT on the machine where docker is running
CMD ["catalina.sh","run"]
