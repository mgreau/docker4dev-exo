FROM exodev/base-jdk:7
MAINTAINER Maxime Gréau <mgreau@exoplatform.com>

# Set the EXO en variable
ENV EXO_JVM_SIZE_MAX 2g
ENV EXO_JVM_SIZE_MIN 2g
ENV EXO_JVM_PERMSIZE_MAX 256m
ENV EXO_PLF_HOME /opt/exo/plf

# Expose the ports we're interested in
EXPOSE 8080

# Create a directory to put local addons
RUN mkdir -p /opt/exo/addons
VOLUME ["/opt/exo/addons"]
