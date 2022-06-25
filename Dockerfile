ARG version=7.17.1
FROM docker.elastic.co/elasticsearch/elasticsearch:${version}
LABEL maintainer Yuki Takei <yuki@weseek.co.jp>

RUN bin/elasticsearch-plugin install analysis-kuromoji
RUN bin/elasticsearch-plugin install analysis-icu
COPY ./config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
