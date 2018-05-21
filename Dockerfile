#FROM openjdk:8-jdk-alpine
#FROM registry-dev:443/sfc_ubuntu_jdk_base:latest
FROM registry-dev:443/sfc_ubuntu_chrome:latest
#ENV phantomJSDependencies\
#  libicu-dev libfontconfig1-dev libjpeg-dev libfreetype6
VOLUME /tmp
ADD gs-rest-service-0.1.0.jar /app.jar
#ADD target/phantomjs /phantomjs
#RUN chmod a+x /phantomjs/bin/phantomjs 
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "$JAVA_HOME/bin/java $JAVA_OPTS -Djava.security.egd=file:/dev/urandom -jar /app.jar" ]
