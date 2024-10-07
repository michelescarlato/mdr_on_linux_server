#!/bin/bash

echo "Running ANZCTR Harvester"
docker-compose up anzctr
docker-compose down --remove-orphans

echo "Running BioLINCC Harvester"
docker-compose up biolincc
docker-compose down --remove-orphans

echo "Running Braz Harvester"
docker-compose up braz
docker-compose down --remove-orphans

echo "Running ChiCTR Harvester"
docker-compose up chictr
docker-compose down --remove-orphans

echo "Running CTG Harvester"
docker-compose up ctg
docker-compose down --remove-orphans

echo "Running DRKS Harvester"
docker-compose up drks
docker-compose down --remove-orphans

echo "Running EUCTR Harvester"
docker-compose up euctr
docker-compose down --remove-orphans

echo "Running ISRCTN Harvester"
docker-compose up isrctn
docker-compose down --remove-orphans

echo "Running JapCTR Harvester"
docker-compose up japctr
docker-compose down --remove-orphans

echo "Running LebCTR Harvester"
docker-compose up lebctr
docker-compose down --remove-orphans

echo "Running NNTR Harvester"
docker-compose up nntr
docker-compose down --remove-orphans

echo "Running PubMed Harvester"
docker-compose up pubmed
docker-compose down --remove-orphans

echo "Running Yoda Harvester"
docker-compose up yoda
docker-compose down --remove-orphans
