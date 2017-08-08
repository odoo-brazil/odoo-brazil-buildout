#!/usr/bin/env bash
set -e -x
virtualenv -p python2 .
bin/pip install -r requirements.txt
./pip-update-requirements.sh
bin/pip install -U zc.buildout pip
printf "[buildout]\nextends = default.cfg\n" >> buildout.cfg
bin/buildout
