FROM openjdk:8-jre-alpine
MAINTAINER BY "Daniel Paes danspaes@gmail.com"

ENV SCALA_VERSION=2.11.8 
ENV SCALA_HOME=/opt/scala-$SCALA_VERSION
ENV PATH=$PATH:$SCALA_HOME/bin

WORKDIR /opt

RUN wget "https://downloads.lightbend.com/scala/${SCALA_VERSION}/scala-${SCALA_VERSION}.tgz" && \
    tar xzf "scala-${SCALA_VERSION}.tgz" && \
    rm "scala-${SCALA_VERSION}.tgz"
