FROM ubuntu:latest

#Install java development kit
RUN apt-get update && apt-get install -y default-jdk tomcat7

RUN sed -i -e 's/JAVA_OPTS/#JAVA_OPTS/g' /etc/default/tomcat7

RUN echo "JAVA_OPTS='-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512m -XX:MaxPermSize=256m -XX:+UseConcMarkS$

CMD ["/usr/bin/tail","-f", "/dev/null"]

#RUN service tomcat7 restart
#RUN /etc/init.d/tomcat7 start

RUN service mysql restart
EXPOSE 3306
EXPOSE 8080
