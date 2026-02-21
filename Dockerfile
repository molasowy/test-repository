FROM eclipse-temurin:17-jdk AS build
WORKDIR /app

COPY gradlew build.gradle settings.gradle ./
COPY gradle/ ./gradle/
RUN chmod +x ./gradlew

COPY src/ ./src/

# Ensure we produce the runnable Spring Boot jar
RUN ./gradlew clean bootJar -x test