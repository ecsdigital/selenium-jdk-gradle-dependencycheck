FROM selenium/node-chrome:latest

USER root

ARG GRADLE_SOURCE=/home/gradle/default

RUN apt-get -qqy update \
  && apt-get -qqy --no-install-recommends install \
    openjdk-8-jdk

ENV GRADLE_VERSION=4.9
ENV PATH=$PATH:/app/gradle-$GRADLE_VERSION/bin
COPY build.gradle ${GRADLE_SOURCE}/build.gradle
WORKDIR ${GRADLE_SOURCE}

RUN wget https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip -O /tmp/gradle-$GRADLE_VERSION-bin.zip \
  && unzip /tmp/gradle-$GRADLE_VERSION-bin.zip -d /app \
  && rm /tmp/gradle-$GRADLE_VERSION-bin.zip \
  && gradle dependencyCheckAnalyze --debug