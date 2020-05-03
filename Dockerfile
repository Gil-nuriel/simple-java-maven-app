FROM maven:latest

LABEL maintainer "gil11"

RUN apt update

RUN apt install -y maven 

COPY pox.xml /usr/local/src/pom.xml

COPY src /usr/local/src/src

WORKDIR /usr/local/src

RUN mvn package