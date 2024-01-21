FROM eclipse-temurin:17.0.9_9-jdk
RUN apt-get update -y && apt-get install -y maven

COPY d13/mvnw d13/pom.xml /workspace/
COPY d13/src /workspace/src

WORKDIR /workspace
RUN mvn wrapper:wrapper

CMD ["./mvnw", "spring-boot:run"]