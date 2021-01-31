FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/api-gateway-0.0.1-SNAPSHOT.jar api-gateway.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar api-gateway.jar" ]