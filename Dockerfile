FROM ubuntu:20.04
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
RUN apt-get update && apt-get install -y \
    curl \
	openjdk-8-jdk \
    && curl -O http://archive.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz \
    && tar -xzvf apache*.tar.gz \
	&& mv apache-tomcat-8.5.40/* /opt/tomcat/ \
	&& java -version
ADD https://tomcat.apache.org/tomcat-8.0-doc/appdev/sample/sample.war /opt/tomcat/webapps
WORKDIR /opt/tomcat/webapps
EXPOSE 8081
CMD ["/opt/tomcat/bin/catalina.sh","run"]
