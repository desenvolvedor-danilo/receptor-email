FROM openjdk:22-slim-bullseye
COPY . .
EXPOSE 8080
COPY /Downloads/target/receptor-email-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT [ "java","-jar","app.jar" ]