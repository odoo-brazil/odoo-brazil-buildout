#!/usr/bin/env bash
set -e -x
virtualenv .
bin/pip install -U zc.buildout pip

bin/buildout
printf "[buildout]\nextends = default.cfg\n" >> buildout.cfg

