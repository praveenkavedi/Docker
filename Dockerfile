FROM ubuntu:latest
LABEL Name = "Praveen"
LABEL Env="Dev"
WORKDIR /app
RUN apt-get update && apt-get install apache2 -y
COPY ./index.html /usr/local/apache2/htdocs
ENTRYPOINT [ "service", "apache2", "start" ]
EXPOSE 80



