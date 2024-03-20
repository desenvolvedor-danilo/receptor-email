FROM ubuntu:22.04
RUN apt-get update
RUN apt-get install openjdk-17-jdk -y
RUN apt-get install maven  -y
RUN mvn clean install -DskipTests
COPY . .
EXPOSE 8080
ENTRYPOINT ["java","-jar","/target/receptor-email-0.0.1-SNAPSHOT.jar"]