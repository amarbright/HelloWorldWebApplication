FROM openjdk:11-jdk-slim

ARG profile=dev

ENV spring_profiles_active=${profile}

ARG JAR_FILE=target/*.war

COPY ${JAR_FILE} hello-world-application.war

EXPOSE 8080
