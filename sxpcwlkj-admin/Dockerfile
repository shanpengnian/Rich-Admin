FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER Lion Li

RUN mkdir -p /sxpcwlkj/server
RUN mkdir -p /sxpcwlkj/server/logs
RUN mkdir -p /sxpcwlkj/server/temp

WORKDIR /sxpcwlkj/server

EXPOSE 8080

ADD ./target/sxpcwlkj-admin.jar ./app.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]
