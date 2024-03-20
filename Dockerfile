FROM ubuntu
RUN apt update
RUN apt install openjdk-17-jdk -y
COPY . .
EXPOSE 8080
ENTRYPOINT [ "java","-jar","/target/receptor-email-0.0.1-SNAPSHOT.jar" ]