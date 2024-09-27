#!/bin/bash

echo "Running BioLINCC container"
docker-compose up --remove-orphans biolincc
docker-compose down --remove-orphans

echo "Running ClinicalTrials.gov container"
docker-compose up --remove-orphans clinicaltrials
docker-compose down --remove-orphans

echo "Running EUCTR(EMA) container"
docker-compose up --remove-orphans euctr
docker-compose down --remove-orphans

echo "Running ISRCTN container"
docker-compose up --remove-orphans isrctn
docker-compose down --remove-orphans

echo "Running PubMed1 container"
docker-compose up --remove-orphans pubmed1
docker-compose down --remove-orphans

echo "Running PubMed2 container"
docker-compose up --remove-orphans pubmed2
docker-compose down --remove-orphans

echo "Running WHO container"
docker-compose up --remove-orphans who
docker-compose down --remove-orphans

echo "Running Yoda1 container"
docker-compose up --remove-orphans yoda1
docker-compose down --remove-orphans

echo "Running Yoda2 container"
docker-compose up --remove-orphans yoda2
docker-compose down --remove-orphans
