FROM openjdk:8
ENV SENTINEL_HOME /app/sentinel-dashboard
RUN mkdir -p ${SENTINEL_HOME}
COPY sentinel-dashboard.jar ${SENTINEL_HOME}
WORKDIR ${SENTINEL_HOME}
EXPOSE 8080
CMD java ${JAVA_OPTS} -jar sentinel-dashboard.jar