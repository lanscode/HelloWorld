
FROM tomcat:8.0

ADD **/*.war /src/local/tomcat/webapps

EXPOSE 8180
 # OPEN THIS PORT on the machine where docker is running
CMD ["catalina.sh","run"]
