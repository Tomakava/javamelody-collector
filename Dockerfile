FROM openjdk:11

ARG JAVAMELODY_VERSION

EXPOSE 8080

ENTRYPOINT java -jar /opt/javamelody-collector.war

ADD https://github.com/javamelody/javamelody/releases/download/javamelody-core-${JAVAMELODY_VERSION}/javamelody-collector-server-${JAVAMELODY_VERSION}.war /opt/javamelody-collector.war