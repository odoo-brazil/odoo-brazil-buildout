#!/usr/bin/env bash
set -e -x
virtualenv -p python2 .
sudo apt-get install wkhtmltopdf
bin/pip install -U zc.buildout pip
bin/buildout

