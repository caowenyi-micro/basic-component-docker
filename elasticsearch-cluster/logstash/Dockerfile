#logstash
FROM docker.elastic.co/logstash/logstash:6.8.10
RUN logstash-plugin install logstash-input-jdbc
RUN logstash-plugin install logstash-output-elasticsearch
CMD ["-f", "/usr/share/logstash/config/logstash.conf"]
