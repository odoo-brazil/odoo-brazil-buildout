#!/usr/bin/env bash
set -e -x
sudo apt-get install python3 python-dev python3-dev
virtualenv -p python3 .
bin/pip install -U zc.buildout pip
bin/buildout

