FROM eclipse-temurin:17-jdk AS build
WORKDIR /app

COPY gradlew build.gradle settings.gradle ./
COPY gradle/ ./gradle/
RUN chmod +x ./gradlew

COPY src/ ./src/
RUN ./gradlew clean build -x test

FROM eclipse-temurin:17-jre
WORKDIR /app