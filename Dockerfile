FROM alpine:glibc
MAINTAINER Darebeat <fengwei2010@126.com>
ADD apks/jre /opt/jre
ENV JAVA_HOME=/opt/jre
RUN ln -s $JAVA_HOME/bin/java /usr/bin/java
