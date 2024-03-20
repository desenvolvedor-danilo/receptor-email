FROM ubuntu
RUN apt update
RUN apt install openjdk-17-jdk -y
COPY . .
COPY /target/receptor-email-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT [ "java","-jar","app.jar" ]
