FROM codecentric/springboot-maven3-centos

USER root

ENV JAVA_HOME /usr/lib/jvm/java
ENV MAVEN_HOME /usr/share/maven
WORKDIR /opt/app-root

COPY . .
RUN mvn clean install
RUN cp target/helloworld-0.0.1-SNAPSHOT.jar ./helloworld.jar

RUN chown -R 1001:0 /opt/app-root
USER 1001

CMD java -jar helloworld.jar
