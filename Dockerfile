FROM maven:3.5-jdk-7

RUN set -ex && \
    echo 'deb http://deb.debian.org/debian jessie-backports main' \
      > /etc/apt/sources.list.d/jessie-backports.list && \
    apt-get update -y && \
    apt-get install -t \
      jessie-backports \
      openjdk-8-jdk \
      ca-certificates-java -y

ENV JAVA_HOME_8=/usr/lib/jvm/java-8-openjdk-amd64
ENV JAVA_HOME_7=/usr/lib/jvm/java-7-openjdk-amd64
