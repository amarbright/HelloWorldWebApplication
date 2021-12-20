FROM openjdk:11-jdk-slim

ARG profile=dev

ENV spring_profiles_active=${profile}

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} hello-world-application.jar

EXPOSE 9090

ENTRYPOINT ["java", "-jar", "/hello-world-application.jar"]
