FROM amazoncorretto:17

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
COPY src ./src
EXPOSE 8080
#RUN ./mvnw dependency:resolve

CMD ["./mvnw", "spring-boot:run"]