## Anzctr

Seems to have run without issues.

```sql
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\anzctr\', '/app/MDR_Data/anzctr/');
```
Query run to change the path.
Furthermore, MDR_Data (in krang) has been populated with more JSONs (coming from the prod environments).

When
```
WTF - the file at anzctr\/ACTRN12624000457549.json does not seem to exist
```
occurs, table must be updated (on anzctr db):
```sql
UPDATE mn.source_data
SET local_path = REPLACE(local_path, E'\\/', '/')
WHERE local_path LIKE E'anzctr\\/%' ESCAPE '#';
```

## Biolincc
The Harvester looks at the position of the json files contained in the biolincc.mn.source_data table.

The Docker container now stores the MDR_Data in the /app/ directory.
So the Harvester should mount the Docker volume containing this file in its /app/ directory.

## ClinicalTrial.gov (CTG)

It seems that after the Downloader runs, there are many `local_path` that are added as follows:
```bash
ctg/NCT0370xxxx/NCT03700346.json
```

```sql
UPDATE mn.source_data
SET local_path = regexp_replace(local_path, '^ctg(NCT[0-9]{4}xxxx/)', 'ctg/\1')
WHERE local_path LIKE 'ctgNCT%'
  AND local_path ~ '^ctgNCT[0-9]{4}xxxx/';
```


## China CTR (Chictr)
```sql
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\chictr\', '/app/MDR_Data/chictr/');
```

Query run to change the path.

```sql
UPDATE mn.source_data
SET local_path = REPLACE(local_path, E'\\/', '/')
WHERE local_path LIKE E'chictr\\/%' ESCAPE '#';
```

## DRKS (Deutch)

0 files harvested. To investigate why.

```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\drks\', '/app/MDR_Data/drks/');
```
Query run to change the path.
Furthermore, MDR_Data (in krang) has been populated with more JSONs (coming from the prod environments).


## EUCTR

```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\euctr\', '/app/MDR_Data/euctr/');
```

When
```
WTF - the file at chictr\/ChiCTR2000030072.json does not seem to exist
```
occurs, table must be updated (on chictr db):

```
UPDATE 43581

Query returned successfully in 1 secs 20 msec.
```

-s "100123" -t 2



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

For the 4 sources data have been updated from Prod.


## Braz (rebec)

Braz (rebec db):

```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\rebec\', '/app/MDR_Data/rebec/');
```

```
UPDATE 7292

Query returned successfully in 621 msec.
```

Cuban rpcec db:
```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\rpcec\', '/app/MDR_Data/rpcec/');
```

```
UPDATE 447

Query returned successfully in 568 msec.
```

Peruvian rpuec db:

```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\rpuec\', '/app/MDR_Data/rpuec/');
```

```
UPDATE 2063

Query returned successfully in 421 msec.
```

Korean (cris) db:
```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\cris\', '/app/MDR_Data/cris/');
```

```
UPDATE 9680

Query returned successfully in 865 msec.
```

ITM db:

```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\itmctr\', '/app/MDR_Data/itmctr/');
```

```
UPDATE 4486

Query returned successfully in 733 msec.
```

For the 5 sources MDR_data JSONs have been imported from Prod server.

## NNTR

Run without issues.
```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\nntr\', '/app/MDR_Data/nntr/');
```
Query run to change the path.

## Pubmed

```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, 'F:\MDR_Data\pubmed\', '/app/MDR_Data/pubmed/');
```

```
UPDATE 283684

Query returned successfully in 4 secs 844 msec.
```

```
UPDATE mn.source_data
SET local_path = REPLACE(local_path, '\', '/');
```


```
UPDATE 283684

Query returned successfully in 3 secs 551 msec.
```

To double-check that every local_path has been updated to the Linux fs format.

```
SELECT local_path
FROM mn.source_data
WHERE local_path LIKE '%\\%';
```

## Yoda

I removed 13 the entries with local_path pointing to F:\

```
DELETE FROM mn.source_data
WHERE local_path LIKE 'F:\\%';
```
to avoid the Harvester throwing file not found errors.
