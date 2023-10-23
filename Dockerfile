FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

ENV PORT=3000

COPY ["package.json", "package-lock.json*", "./"]

RUN mvn clean spring-boot:run

COPY . .

CMD ["mvn", "clean spring-boot:run"]