FROM exodev/plf-tomcat:4.3.x
MAINTAINER Maxime Gréau <mgreau@exoplatform.com>

ENV MYSQL_CONNECTOR_VERSION 5.1.34
ENV MYSQL_PORT 3306
ENV MYSQL_HOST mysql-server

# MySQL configuration (TODO: use docker env variable)
RUN mv ${EXO_PLF_HOME}/conf/server-mysql.xml ${EXO_PLF_HOME}/conf/server.xml \
   && sed -i 's/localhost:3306/mysql-server:3306/g' ${EXO_PLF_HOME}/conf/server.xml \
   && curl -L -o ${EXO_PLF_HOME}/lib/mysql-connector-java-${MYSQL_CONNECTOR_VERSION}.jar https://repo1.maven.org/maven2/mysql/mysql-connector-java/${MYSQL_CONNECTOR_VERSION}/mysql-connector-java-${MYSQL_CONNECTOR_VERSION}.jar

# Set the default command to run on boot
CMD ["/opt/exo/plf/start_eXo.sh"]
