FROM exo/base-jdk:7
MAINTAINER Maxime Gréau <mgreau@exoplatform.com>

# Set the EXO en variable
ENV EXO_PLF_HOME /opt/exo/plf

# Add the PLF distribution to /opt, and make exo the owner of the extracted tar content
# Make sure the distribution is available from a well-known place
ADD plf /opt/exo/plf/

# Hack because of https://github.com/docker/docker/issues/6119
USER root
RUN chown -R exo:exo ${EXO_PLF_HOME}
USER exo

# Expose the ports we're interested in
EXPOSE 8080

VOLUME ["/opt/exo/plf"]

# Set the default command to run on boot
# This will boot PLF in the standalone mode and bind to all interface
CMD ["/opt/exo/plf/bin/standalone.sh", "-b", "0.0.0.0"]
