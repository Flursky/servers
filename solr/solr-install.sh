#!/bin/bash

sudo systemctl disable firewalld --now

SOLR_URL="https://archive.apache.org/dist/lucene/solr/8.4.0/solr-8.4.0.tgz"

wget -q $SOLR_URL

tar xzf solr-8.4.0.tgz

mv solr-8.4.0 solr
mv solr /opt/solr

SOLR_HOME="/opt/solr"

cp $SOLR_HOME/bin/solr.in.sh /etc/default/solr.in.sh
