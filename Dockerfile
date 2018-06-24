FROM codecentric/springboot-maven3-centos

USER root

ADD target/helloworld-0.0.1-SNAPSHOT.jar ${HOME}

CMD echo "=> Starting helloworld"
CMD java -jar helloworld-0.0.1-SNAPSHOT.jar