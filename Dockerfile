FROM apache/polaris:latest

USER root

COPY customCA.crt /tmp/customCA.crt
RUN keytool -import -alias minio -file /tmp/customCA.crt -keystore $JAVA_HOME/lib/security/cacerts -storepass changeit

USER polaris