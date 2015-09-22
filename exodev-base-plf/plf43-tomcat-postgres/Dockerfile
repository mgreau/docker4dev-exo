FROM exodev/plf-tomcat:4.3.x
MAINTAINER Maxime Gréau <mgreau@exoplatform.com>

ENV POSTGRES_CONNECTOR_VERSION 9.3-1103-jdbc41
ENV POSTGRES_PORT 5432
ENV POSTGRES_HOST postgres-server

# POSTGRESQL configuration (TODO: use docker env variable)
RUN mv ${EXO_PLF_HOME}/conf/server-postgres.xml ${EXO_PLF_HOME}/conf/server.xml \
   && sed -i 's/localhost:5432/postgres-server:5432/g' ${EXO_PLF_HOME}/conf/server.xml \
   && curl -L -o ${EXO_PLF_HOME}/lib/postgresql-${POSTGRES_CONNECTOR_VERSION}.jar https://repo1.maven.org/maven2/org/postgresql/postgresql/${POSTGRES_CONNECTOR_VERSION}/postgresql-${POSTGRES_CONNECTOR_VERSION}.jar

# Set the default command to run on boot
CMD ["/opt/exo/plf/start_eXo.sh"]
