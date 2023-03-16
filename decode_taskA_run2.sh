#!/bin/bash

RUN="run2"
mkdir -p final_output/$RUN
mkdir -p intermediate_outputs/$RUN

echo "Running Section Header Training and Inference"
python3 src/01_taska_classification_traininingandinference.py $1 $RUN

echo "Running Section Summarization Training and Inference"
python3 src/02_taska_summarisation_trainingandinference.py $1 $RUN

echo "Running Summarization Ensemble"
python3 src/03_taska_summarisationensemble.py $1 $RUN

echo "Generating Final Output"
python3 src/04_taska_finaloutputgeneration.py $RUN