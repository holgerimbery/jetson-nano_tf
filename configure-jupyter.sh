#!/usr/bin/env bash
jupyter lab --generate-config
python3 python/set_jupyter_password.py ${1}
python3 python/create_jupyter_service.py
