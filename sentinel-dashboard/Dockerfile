FROM openjdk:8

ENV SENTINEL_HOME /app/sentinel-dashboard
RUN mkdir -p ${SENTINEL_HOME}
COPY sentinel-dashboard-1.7.2.jar ${SENTINEL_HOME}
RUN chmod -R +x ${SENTINEL_HOME}/*jar

WORKDIR ${SENTINEL_HOME}

EXPOSE 8080

CMD java ${JAVA_OPTS} -jar sentinel-dashboard-1.7.2.jar