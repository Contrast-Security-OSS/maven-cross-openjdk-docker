FROM maven:3.5-jdk-7
# Grab JDK from jessie-backports since default sources do not include openJDK-8
RUN set -ex && \
    echo 'deb http://deb.debian.org/debian jessie-backports main' \
      > /etc/apt/sources.list.d/jessie-backports.list && \
    apt-get update -y && \
    apt-get install -t \
      jessie-backports \
      openjdk-8-jdk \
      ca-certificates-java -y && \
    # Remove old symlink to set openJDK-8 as default
    update-alternatives --remove java /usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java

# Manually set Java install environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 \
    JAVA_VERSION=8u171 \
    # Variables holding locations to different installed JDKs
    JAVA_HOME_8=/usr/lib/jvm/java-8-openjdk-amd64 \
    JAVA_HOME_7=/usr/lib/jvm/java-7-openjdk-amd64 \
