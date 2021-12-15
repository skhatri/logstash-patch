### patching logstash image
This project removes the JNDILookup class for log4j 2.9.1 file present in logstash 6.8.9

1. run ./patch.sh
2. docker build --no-cache -t logstash-patched:6.8.9 .


