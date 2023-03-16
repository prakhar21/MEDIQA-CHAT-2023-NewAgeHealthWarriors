#!/bin/bash

RUN="run1"
mkdir -p final_output/$RUN
mkdir -p intermediate_outputs/$RUN

python3 src/01_taska_classification_traininingandinference.py $1 $RUN
python3 src/02_taska_summarisation_trainingandinference.py $1 $RUN
python3 src/03_taska_summarisationensemble.py $1 $RUN
python3 src/04_taska_finaloutputgeneration.py $RUN
