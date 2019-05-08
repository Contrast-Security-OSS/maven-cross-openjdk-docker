FROM maven:3.6.1
RUN set -ex && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9 && \
    echo "deb http://repos.azulsystems.com/debian stable main" > /etc/apt/sources.list.d/zulu.list && \
    apt-get update && apt-get install -y \
    zulu-6 \
    zulu-7 \
    zulu-8 \
    zulu-11 \
    ca-certificates-java && \
    update-alternatives --set java /usr/lib/jvm/zulu-8-amd64/jre/bin/java

ENV JAVA_HOME_6=/usr/lib/jvm/zulu-6-amd64 \
    JAVA_HOME_7=/usr/lib/jvm/zulu-7-amd64 \
    JAVA_HOME_8=/usr/lib/jvm/zulu-8-amd64 \
    JAVA_HOME_11=/usr/lib/jvm/zulu-11-amd64
ENV JAVA_HOME=$JAVA_HOME_8