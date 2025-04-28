FROM gcr.io/distroless/java21-debian12

COPY velocity.jar app.jar

WORKDIR /app

CMD ["-jar", "../app.jar"]
