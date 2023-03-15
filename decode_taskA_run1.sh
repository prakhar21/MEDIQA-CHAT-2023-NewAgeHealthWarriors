#!/bin/bash

RUN="run1"
mkdir -p outputs/$RUN

#python3 src/01_taska_classification_traininingandinference.py $1
#python3 src/02_taska_summarisation_trainingandinference.py $1
#python src/03_taska_summarisationensemble.py $1
python src/04_taska_finaloutputgeneration.py $RUN
