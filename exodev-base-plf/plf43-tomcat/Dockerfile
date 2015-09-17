FROM exodev/base-plf:4.3.x
MAINTAINER Maxime Gréau <mgreau@exoplatform.com>

# Add the PLF distribution to /opt, and make exo the owner of the extracted tar content
# Make sure the distribution is available from a well-known place
ADD plf /opt/exo/plf/

# Hack because of https://github.com/docker/docker/issues/6119
USER root
RUN chown -R exo:exo ${EXO_PLF_HOME}
USER exo

# Set the default command to run on boot
CMD ["/opt/exo/plf/start_eXo.sh"]
