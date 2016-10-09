#Get latest ubuntu image
FROM ubuntu:latest

# Set an Environment variable for Tomcat
ENV TOMCAT_VERSION 8.0.37

# Set locales
RUN locale-gen en_GB.UTF-8
ENV LANG en_GB.UTF-8
ENV LC_CTYPE en_GB.UTF-8

# Fix sh
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Install dependencies
RUN apt-get update && \
apt-get install -y git build-essential curl wget software-properties-common

# Install JDK 8
RUN \
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
add-apt-repository -y ppa:webupd8team/java && \
apt-get update && \
apt-get install -y oracle-java8-installer wget unzip tar && \
apt-get install -y tomcat8-docs tomcat8-admin tomcat8-examples && \
rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/oracle-jdk8-installer

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Get Tomcat and install Tomcat
RUN wget --quiet --no-cookies http://apache.rediris.es/tomcat/tomcat-8/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz $
tar xzvf /tmp/tomcat.tgz -C /opt && \
mv /opt/apache-tomcat-${TOMCAT_VERSION} /opt/tomcat && \
rm /tmp/tomcat.tgz

#Set Environment Variables
ENV CATALINA_HOME /opt/tomcat
ENV PATH $PATH:$CATALINA_HOME/bin

#Expose container ports
# Connector port
EXPOSE 7556

#Create directory inside container to host webapps
VOLUME "/opt/tomcat/webapps"

#set default working directory for all users as they use the interactive shell
WORKDIR /opt/tomcat

# Change tomcat connector port
RUN sed -i -e 's/8080/7556/g' /opt/tomcat/conf/server.xml

# Launch Tomcat
CMD ["/opt/tomcat/bin/catalina.sh", "run"]

