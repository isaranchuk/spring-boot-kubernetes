FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8080
COPY target/*.jar app.jar
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-Xms128m", "-Xmx128m", "-jar", "app.jar"]
