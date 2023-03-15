#!/bin/bash

python3 -m pip install virtualenv
python3 -m virtualenv NewAgeHealthWarriors_taskA_venv
source NewAgeHealthWarriors_taskA_venv/bin/activate
pip install -r requirements.txt
deactivate
