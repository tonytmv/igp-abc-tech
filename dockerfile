FROM iamdevopstrainer/tomcat:base

COPY target/*.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]