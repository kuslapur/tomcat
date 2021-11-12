FROM ubuntu

RUN apt-get update
RUN apt-get install -y openjdk-8-jdk  
RUN apt-get install -y wget
WORKDIR /opt/
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.54/bin/apache-tomcat-9.0.54.tar.gz
RUN tar zxf apache-tomcat-9.0.54.tar.gz

WORKDIR /opt/apache-tomcat-9.0.54/webapps
RUN wget https://github.com/kuslapur/tomcat/raw/master/petclinic.war

EXPOSE 8080

CMD ["/opt/apache-tomcat-9.0.54/bin/catalina.sh", "run"]

