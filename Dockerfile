FROM logstash:6.8.9
COPY patched.jar /usr/share/logstash/logstash-core/lib/jars/log4j-core-2.9.1.jar


