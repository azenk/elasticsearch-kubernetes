FROM elasticsearch

COPY elasticsearch-cloud-kubernetes-1.0.0-SNAPSHOT.zip /tmp/elasticsearch-cloud-kubernetes-1.0.0-SNAPSHOT.zip
RUN /elasticsearch/bin/plugin --install cloud-kubernetes --url file:/tmp/elasticsearch-cloud-kubernetes-1.0.0-SNAPSHOT.zip



