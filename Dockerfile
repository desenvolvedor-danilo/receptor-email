FROM openjdk:slim
COPY . .
EXPOSE 8080
ENTRYPOINT [ "java","-jar","/target/receptor-email-0.0.1-SNAPSHOT.jar" ]
