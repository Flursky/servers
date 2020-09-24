#!/bin/bash

sudo systemctl disable firewalld --now

SOLR_URL="https://archive.apache.org/dist/lucene/solr/8.4.0/solr-8.4.0.tgz"

wget -q $SOLR_URL