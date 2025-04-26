# Stage 1: Build the WAR file using Maven
FROM maven:3.9.9-openjdk-22 as builder

WORKDIR /app
COPY . .
RUN mvn clean package

# Stage 2: Deploy WAR file to Tomcat
FROM iamdevopstrainer/tomcat:base

COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]
