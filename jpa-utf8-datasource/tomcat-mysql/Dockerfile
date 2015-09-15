FROM       exobase
MAINTAINER GREAU Maxime <mgreau+docker@exoplatform.com>

# Environment variables
ENV EXO_EDITION enterprise
ENV EXO_VERSION 4.3.x-SNAPSHOT
ENV EXO_JVM_SIZE_MAX 2g
ENV EXO_JVM_SIZE_MIN 2g
ENV EXO_JVM_PERMSIZE_MAX 256m
ENV EXO_PROFILES -Dexo.profiles=all

ENV MYSQL_CONNECTOR_VERSION 5.1.34

ENV ADDON_TASK exo-task-management:1.0.x-SNAPSHOT

# Download MySQL Driver
RUN curl -L -o ${EXO_APP_DIR}/mysql-connector-java-${MYSQL_CONNECTOR_VERSION}.jar https://repo1.maven.org/maven2/mysql/mysql-connector-java/${MYSQL_CONNECTOR_VERSION}/mysql-connector-java-${MYSQL_CONNECTOR_VERSION}.jar
ADD resources/server.xml /opt/exo/server.xml

ADD resources/configure-and-start.sh /opt/exo/configure-and-start.sh
RUN chmod u+x /opt/exo/configure-and-start.sh

# For platform standalone tomcat
VOLUME ["/myproject"]

# For all datas
VOLUME ${EXO_DATA_DIR}

EXPOSE 8080

ENTRYPOINT ["/opt/exo/configure-and-start.sh"]
