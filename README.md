# maven-cross-openjdk-docker
Dockerfile which builds an image containing Maven 3.6.1, OpenJDK 6, OpenJDK 7, OpenJDK 8, and OpenJDK 11.  All OpenJDKs are built and supported by Azul Systems, Inc. [Click here for more Information](https://www.azul.com/downloads/zulu/).  

Azul Systems, Inc. runs the OpenJDK code through the full JCK/TCK to ensure that it complies with the Java SE spec, as defined by the JCP/JSR. In addition, they also run an analysis using tools they've developed to ensure that every single file that is compiled (both static and dynamically generated during the build) has the correct GPLv2 with CPE license header. This way they can also guarantee that there are no licensing issues.