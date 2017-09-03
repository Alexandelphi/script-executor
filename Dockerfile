FROM openjdk:8-jdk-alpine

ADD script-executor-impl/target/script-executor-impl-1.0-SNAPSHOT.jar /app/script-executor-impl.jar

ENTRYPOINT ["java", "-Dfile.encoding=UTF-8", "-jar", "/app/script-executor-impl.jar"]

EXPOSE 8080