FROM centos:7
MAINTAINER Maxime Gréau <mgreau@exoplatform.com>

# Install packages necessary to run Tomcat and EAP
RUN yum update -y && yum -y install xmlstarlet saxon augeas bsdtar unzip && yum clean all

# Create a user and group used to launch processes
# The user ID 1000 is the default for the first "regular" user on Fedora/RHEL,
# so there is a high chance that this ID will be equal to the current user
# making it easier to use volumes (no permission issues)
RUN groupadd -r exo -g 1000 && useradd -u 1000 -r -g exo -m -d /opt/exo -s /sbin/nologin -c "eXo user" exo && \
    chmod 755 /opt/exo

# Set the working directory to exo' user home directory
WORKDIR /opt/exo

# Specify the user which should be used to execute all commands below
USER exo
