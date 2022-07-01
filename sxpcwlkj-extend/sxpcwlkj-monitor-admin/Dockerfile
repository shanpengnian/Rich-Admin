FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER Lion Li

RUN mkdir -p /sxpcwlkj/monitor
RUN mkdir -p /sxpcwlkj/monitor/logs

WORKDIR /sxpcwlkj/monitor

EXPOSE 9090

ADD ./target/sxpcwlkj-monitor-admin.jar ./app.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]
