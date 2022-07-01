FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER Lion Li

RUN mkdir -p /sxpcwlkj/xxljob
RUN mkdir -p /sxpcwlkj/xxljob/logs

WORKDIR /sxpcwlkj/xxljob

ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 9100

ADD ./target/sxpcwlkj-xxl-job-admin.jar ./app.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]
