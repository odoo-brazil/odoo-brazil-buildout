#!/usr/bin/env bash
set -e -x
git submodule init
git submodule update
virtualenv sandbox --no-setuptools --no-pip
sandbox/bin/python <(curl https://bootstrap.pypa.io/get-pip.py) --upgrade setuptools==33.1.1 pip zc.buildout
./sandbox/bin/buildout "$@"
