## Anzctr

Log looks very similar to the ones that are in Prod. 

## Biolincc

Log looks very similar to the ones that are in Prod.

## Braz

## Braz (rebec)

Braz (rebec db)

Cuban rpcec db

Peruvian rpuec db

Korean (cris) db

ITM db

Log looks very similar to the ones that are in Prod.

## China CTR
Logs look very similar to prod apart from:
```
mdr-importer-chictr | 10/08/2024 : 06:36 :   Compaction required for study_organisations, (max id: 154460, actual size: 172918)
mdr-importer-chictr | 10/08/2024 : 06:36 :   Transferring 154460 records to ad.study_organisations_new from ad.study_organisations, as a single batch
```

## Drks
Logs look very similar to prod.
Added a log from prod for future comparison.

## Euctr
Logs look very similar to prod.

## Isrctn
Logs look very similar to prod.

## Japctr
Logs look very similar to prod.
Despite I can notice that in prod there is a counter 
```
30/10/2024 : 07:00 :   Deleting 0 records of ad.study_conditions data, in ids 1 to 200000
30/10/2024 : 07:00 :   Deleting 0 records of ad.study_conditions data, in ids 200001 to 400000
30/10/2024 : 07:00 :   Deleting 0 records of ad.study_conditions data, in ids 400001 to 600000
...
30/10/2024 : 07:00 :   Deleting 0 records of ad.study_conditions data, in ids 14000001 to 14200000
30/10/2024 : 07:00 :   Deleting 0 records of ad.study_conditions data, in ids 14200001 to 14400000
30/10/2024 : 07:00 :   Deleting 0 records of ad.study_conditions data, in ids 14400001 to 14422736
```
In Prod the counter starts from 6 December 2023.
It is worthy to understand why.

## Nntr
Logs look very similar to prod.
