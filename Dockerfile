FROM openjdk:17-jdk-slim
MAINTAINER "maheshgowdag29@gmail.com"
WORKDIR /app
COPY ./target/*.jar app.jar
ENV spring.datasource.url=jdbc:postgresql://postgres:5432/mydatabase
ENV spring.datasource.username=postgres
ENV spring.datasource.password=root
EXPOSE 9000
ENTRYPOINT [ "java","-jar","app.jar" ]