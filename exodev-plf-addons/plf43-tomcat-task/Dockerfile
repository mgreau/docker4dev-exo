FROM exodev/plf-tomcat:4.3.x
MAINTAINER Maxime Gréau <mgreau@exoplatform.com>

# Set the EXO en variable
ENV EXO_ADDON exo-tasks:1.0.x-SNAPSHOT

ADD resources/local.json /opt/exo/plf/addons/local.json
ADD resources/addon-task.zip /opt/exo/addons/addon-task.zip

# Hack because of https://github.com/docker/docker/issues/6119
USER root
RUN chown -R exo:exo /opt/exo/plf/addons
RUN chown -R exo:exo /opt/exo/addons
USER exo

RUN ${EXO_PLF_HOME}/addon install ${EXO_ADDON} --force --offline

# Set the default command to run on boot
CMD ["/opt/exo/plf/start_eXo.sh"]
