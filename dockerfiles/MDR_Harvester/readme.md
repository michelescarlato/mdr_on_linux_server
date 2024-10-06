## Anzctr

Seems to have run without issues.

```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\anzctr\', '/app/MDR_Data/anzctr/');
```
Query run to change the path.
Furthermore, MDR_Data (in krang) has been populated with more JSONs (coming from the prod environments).

## Biolincc
The Harvester look at the position of the json files contained in the biolincc.mn.source_data table.

Now the Docker container store the MDR_Data in the /app/ directory.
So the Harvester should mount the docker volume containing this file in its /app/ directory.

## ClinicalTrial.gov (CTG)

Seems to be running without issues.

## China CTR (Chictr)
```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\chictr\', '/app/MDR_Data/chictr/');
```

Query run to change the path.

## DRKS

0 files harvested. To investigate why.

```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\drks\', '/app/MDR_Data/drks/');
```
Query run to change the path.
Furthermore, MDR_Data (in krang) has been populated with more JSONs (coming from the prod environments).

## ISRCTN

Seems to have run without issues.

```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\isrctn\', '/app/MDR_Data/isrctn/');
```
Still data needs to be fully imported from Prod DB.

## JapCTR

```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\jprn\', '/app/MDR_Data/jprn/');
```
```
UPDATE 69280
Query returned successfully in 1 secs 602 msec.
```
MDR_Data updated from Prod env.

## Leb, SriLnkn, Thai, PAfr, Iranian CTRs Harvest

Lebanon db update:
```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\lebctr\', '/app/MDR_Data/lebctr/');
```
```
UPDATE 171

Query returned successfully in 504 msec.
```

SriLnkn db update:

```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\slctr\', '/app/MDR_Data/slctr/');
```

```
UPDATE 479

Query returned successfully in 907 msec.
```

Thai db:

```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\thctr\', '/app/MDR_Data/thctr/');
```

```
UPDATE 9538

Query returned successfully in 581 msec.
```

Pactr db:

```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\pactr\', '/app/MDR_Data/pactr/');
```

```
UPDATE 4635

Query returned successfully in 535 msec.
```

Iran ctr db:

```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\irct\', '/app/MDR_Data/irct/');
```

```
UPDATE 40572

Query returned successfully in 1 secs 323 msec.
```

## NNTR

Run without issues.
```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\nntr\', '/app/MDR_Data/nntr/');
```
Query run to change the path.

## Yoda

I removed 13 the entries with local_path pointing to F:\

```
DELETE FROM mn.source_data
WHERE local_path LIKE 'F:\\%';
```
to avoid the Harvester throwing file not found errors.
