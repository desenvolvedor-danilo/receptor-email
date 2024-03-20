FROM openjdk:22-slim-bullseye
COPY . .
EXPOSE 8080
COPY . /target/receptor-email-0.0.1-SNAPSHOT.jar

ENTRYPOINT [ "java","-jar","/target/receptor-email-0.0.1-SNAPSHOT.jar" ]