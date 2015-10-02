FROM exodev/base-plf:4.3.x
MAINTAINER Maxime Gréau <mgreau@exoplatform.com>

# Expose the ports we're interested in
EXPOSE 9000

# Add the PLF distribution to /opt, and make exo the owner of the extracted tar content
# Make sure the distribution is available from a well-known place
ADD plf /opt/exo/plf/
ADD resources/jboss-deployment-structure.xml plf/standalone/deployments/platform.ear/META-INF/jboss-deployment-structure.xml
ADD resources/local.json /opt/exo/plf/addons/local.json
ADD resources/social-addon.zip /opt/exo/addons/social-rdbms-addons-bundle-1.0.x-SNAPSHOT.zip

# Hack because of https://github.com/docker/docker/issues/6119
USER root
RUN chown -R exo:exo /opt/exo/addons
RUN chown -R exo:exo ${EXO_PLF_HOME}
USER exo

# Set the EXO en variable
ENV EXO_ADDON_SOCIAL exo-social-rdbms:1.0.x-SNAPSHOT
RUN ${EXO_PLF_HOME}/addon install ${EXO_ADDON_SOCIAL} --force --offline

# Set the default command to run on boot
# This will boot PLF in the standalone mode and bind to all interface
CMD ["/opt/exo/plf/bin/standalone.sh", "-b", "0.0.0.0", "--debug", "8787"]
