FROM openjdk:22-slim-bullseye
COPY . .
EXPOSE 8080
ENTRYPOINT [ "java","-jar","/Downloads/target/receptor-email-0.0.1-SNAPSHOT.jar" ]