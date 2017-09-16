#!/usr/bin/env bash
set -e -x
virtualenv -p python2 .
bin/pip install -U zc.buildout pip
bin/buildout

