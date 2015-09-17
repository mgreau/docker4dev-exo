FROM exo/base:latest
MAINTAINER Maxime Gréau <mgreau@exoplatform.com>

# User root user to install software
USER root

# Install necessary packages
RUN yum -y install java-1.8.0-openjdk-devel && yum clean all

# Switch back to exo user
USER exo

# Set the JAVA_HOME variable to make it clear where Java is located
ENV JAVA_HOME /usr/lib/jvm/java
