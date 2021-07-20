FROM openjdk:11-jre

COPY . .

ENTRYPOINT ["./mvnw","spring-boot:run"] 
