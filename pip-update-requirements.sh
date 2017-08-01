#!/usr/bin/env bash
bin/pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 bin/pip install -U
bin/pip freeze --local > requirements.txt
