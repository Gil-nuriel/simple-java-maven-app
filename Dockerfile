FROM maven:3.6.3-jdk-8

LABEL maintainer "gil11"

RUN apt-get update

RUN apt-get install -y maven 

COPY pom.xml /usr/local/src/pom.xml

COPY src /usr/local/src/src

WORKDIR /usr/local/src

RUN mvn package