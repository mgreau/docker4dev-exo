FROM plf43tomcatpostgresql_plf_tomcat_postgres
MAINTAINER Maxime Gréau <mgreau@exoplatform.com>

# Set the EXO en variable
ENV EXO_ADDON exo-tasks:1.0.x-SNAPSHOT

ADD resources/local.json /opt/exo/plf/addons/local.json
ADD resources/task-addon.zip /opt/exo/addons/task-management-packaging-1.0.x-SNAPSHOT.zip

# Hack because of https://github.com/docker/docker/issues/6119
USER root
RUN chown -R exo:exo /opt/exo/plf/addons
USER exo

RUN ${EXO_PLF_HOME}/addon install ${EXO_ADDON} --force --offline

# Set the default command to run on boot
CMD ["/opt/exo/plf/start_eXo.sh"]
