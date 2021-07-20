FROM openjdk:11-jre

COPY . .

CMD ["bash", "-c", "./mvnw spring-boot:run"]
