FROM maven:3.5-jdk-8-alpine

COPY . /tmp/script-executor

RUN cd /tmp/script-executor && mvn clean install

RUN mkdir /app \
&& cp /tmp/script-executor/script-executor-impl/target/script-executor-impl-1.0-SNAPSHOT.jar /app/script-executor-impl.jar \
&& rm -rf /tmp/*

ENTRYPOINT ["java", "-Dfile.encoding=UTF-8", "-jar", "/app/script-executor-impl.jar"]

EXPOSE 8081