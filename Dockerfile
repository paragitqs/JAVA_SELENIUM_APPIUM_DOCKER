#base image we are going to use
FROM alpine
WORKDIR /root/abc
COPY Test_All.java /root/abc

#Install jdk

RUN apk add openjdk8
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:$JAVA_HOME/bin

#compile our code

RUN javac Test_All.java

ENTRYPOINT java Test_All