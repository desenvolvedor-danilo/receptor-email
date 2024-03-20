FROM ubuntu:22.04
RUN apt-get update
COPY . .
RUN apt-get install openjdk-17-jdk -y
EXPOSE 8080
COPY /target/receptor-email-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]