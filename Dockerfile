#Install and configure [] 

FROM nginx:alpine
MAINTAINER Brandon Cone bcone@esu10.org

COPY container_files /

ENV KOPF_VERSION 2.0
ENV ES_LS_KB_VERSION 5.6.4

RUN apk update && \
apk add apache2-utils curl && \
curl -s -L https://github.com/lmenezes/elasticsearch-kopf/archive/${KOPF_VERSION}.zip --output /tmp/kopf-${KOPF_VERSION}.zip && \
#curl -s -L "https://artifacts.elastic.co/downloads/kibana/kibana-${ES_LS_KB_VERSION}-linux-x86_64.tar.gz" | \
#tar xz -C /tmp && mv "/tmp/kibana-${ES_LS_KB_VERSION}-linux-x86_64" /webroot/kibana && \
unzip /tmp/kopf-${KOPF_VERSION}.zip -d /tmp && mv "/tmp/elasticsearch-kopf-${KOPF_VERSION}" /webroot/kopf