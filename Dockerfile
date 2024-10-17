## Use an official OpenJDK runtime as a parent image
#FROM openjdk:17-jdk-alpine
#
## Set the working directory inside the container
#WORKDIR /app
#
## Copy the built JAR file into the container
#COPY target/docker-jenkins-integration-sample.jar /app/docker-jenkins-integration-sample.jar
#
## Expose port 8080 for the Spring Boot app
#EXPOSE 8080
#
## Command to run the JAR file
#ENTRYPOINT ["java", "-jar", "docker-jenkins-integration-sample.jar"]


FROM openjdk:8
EXPOSE 8080
ADD target/docker-jenkins-integration-sample.jar docker-jenkins-integration-sample.jar
ENTRYPOINT ["java","-jar","/docker-jenkins-integration-sample.jar"]