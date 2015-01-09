FROM dockerfile/elasticsearch

COPY elasticsearch.yml /elasticsearch/config/elasticsearch.yml
COPY elasticsearch-cloud-kubernetes-1.0.0-SNAPSHOT.zip /tmp/elasticsearch-cloud-kubernetes-1.0.0-SNAPSHOT.zip

ENV SELECTOR ""
RUN /elasticsearch/bin/plugin --install cloud-k8s --url file:/tmp/elasticsearch-cloud-kubernetes-1.0.0-SNAPSHOT.zip


