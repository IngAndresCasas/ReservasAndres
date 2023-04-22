#FROM maven:3.6.0-jdk-11-slim AS build
#COPY src /home/app/src
#COPY pom.xml /home/app
#RUN mvn -f /home/app/pom.xml clean package
FROM amazoncorretto:11-alpine-jdk
MAINTAINER AndresCasas
COPY out/artifacts/reservas_jar/reservas.jar reservas-app.jar
ENTRYPOINT ["java","-jar","reservas-app.jar"]
