FROM python:latest AS downloader-velocity

COPY updateVelocity.py main.py

CMD [ "main.py" "./velocity.jar"]

FROM gcr.io/distroless/java21-debian12

COPY --from=downloader-velocity velocity.jar app.jar

WORKDIR /app

CMD ["-jar", "../app.jar"]
