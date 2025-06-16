FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /build
COPY . .

FROM openjdk:17-slim
WORKDIR /app
COPY --from=build /build/target/spring-petclinic-3.4.0-SNAPSHOT.jar app.jar
CMD ["java", "-jar", "app.jar"]

