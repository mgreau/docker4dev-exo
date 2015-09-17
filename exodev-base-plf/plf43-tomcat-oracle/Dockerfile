FROM exodev/plf-tomcat:4.3.x
MAINTAINER Maxime Gréau <mgreau@exoplatform.com>

ENV ORACLE_DRIVER_VERSION 11.2.0.3
ENV ORACLE_PORT 49161
ENV ORACLE_HOST 192.168.99.103
ENV ORACLE_SID xe
ENV ORACLE_USER system
ENV ORACLE_PWD oracle

# MySQL configuration (TODO: use docker env variable)
RUN mv ${EXO_PLF_HOME}/conf/server-oracle.xml ${EXO_PLF_HOME}/conf/server.xml \
   && sed -i "s/@localhost:1521:plf/@${ORACLE_HOST}:${ORACLE_PORT}:${ORACLE_SID}/g" ${EXO_PLF_HOME}/conf/server.xml \
   && sed -i "s/username=\"plf\"/username=\"${ORACLE_USER}\"/g" ${EXO_PLF_HOME}/conf/server.xml \
   && sed -i "s/password=\"plf\"/password=\"${ORACLE_PWD}\"/g" ${EXO_PLF_HOME}/conf/server.xml \
   && curl -L -o ${EXO_PLF_HOME}/lib/ojdbc6-${ORACLE_DRIVER_VERSION}.jar https://code.lds.org/nexus/content/groups/main-repo/com/oracle/ojdbc6/${ORACLE_DRIVER_VERSION}/ojdbc6-${ORACLE_DRIVER_VERSION}.jar
# Set the default command to run on boot
CMD ["/opt/exo/plf/start_eXo.sh"]
