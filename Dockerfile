FROM codecentric/springboot-maven3-centos

USER root

ENV JAVA_HOME /usr/lib/jvm/java
ENV MAVEN_HOME /usr/share/maven
WORKDIR /opt/app-root

COPY . .
RUN mvn clean install
CMD cp target/helloworld-0.0.1-SNAPSHOT.jar ./helloworld.jar

CMD echo "=> Starting helloworld"
CMD java -jar helloworld.jar
