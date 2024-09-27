#!/bin/bash

echo "Running BioLINCC container"
docker-compose up biolincc
docker-compose down

echo "Running ClinicalTrials.gov container"
docker-compose up clinicaltrials
docker-compose down

echo "Running EUCTR(EMA) container"
docker-compose up euctr
docker-compose down

echo "Running ISRCTN container"
docker-compose up isrctn
docker-compose down

echo "Running PubMed1 container"
docker-compose up pubmed1
docker-compose down

echo "Running PubMed2 container"
docker-compose up pubmed2
docker-compose down

echo "Running WHO container"
docker-compose up who
docker-compose down

echo "Running Yoda1 container"
docker-compose up yoda1
docker-compose down

echo "Running Yoda2 container"
docker-compose up yoda2
docker-compose down
