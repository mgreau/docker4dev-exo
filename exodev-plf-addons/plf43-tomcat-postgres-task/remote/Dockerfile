FROM plf43tomcatpostgresql_plf_tomcat_postgres
MAINTAINER Maxime Gréau <mgreau@exoplatform.com>

# Set the EXO en variable
ENV EXO_ADDON exo-tasks:1.0.x-SNAPSHOT

RUN ${EXO_PLF_HOME}/addon install ${EXO_ADDON} --force

# Set the default command to run on boot
CMD ["/opt/exo/plf/start_eXo.sh"]
