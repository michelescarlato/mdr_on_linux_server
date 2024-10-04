## Anzctr

Seems to have run without issues.

## Biolincc
The Harvester look at the position of the json files contained in the biolincc.mn.source_data table.

Now the Docker container store the MDR_Data in the /app/ directory.
So the Harvester should mount the docker volume containing this file in its /app/ directory.

## ClinicalTrial.gov (CTG)

Seems to be running without issues.

## DRKS

0 files harvested. To investigate why.

## ISRCTN

Seems to have run without issues.

## Yoda

I removed 13 the entries with local_path pointing to F:\

```
DELETE FROM mn.source_data
WHERE local_path LIKE 'F:\\%';
```
to avoid the Harvester throwing file not found errors.
