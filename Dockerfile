FROM openjdk:11-jre

COPY ../spring-petclinic/target/*.jar spring-petclinic.jar

RUN addgroup --system petclinic && adduser --system --group petclinic
USER petclinic:petclinic

ENV JAVA_OPTS=""

CMD ["bash", "-c", "java ${JAVA_OPTS} -jar /spring-petclinic.jar"]
