On the first run:
```
~/gitrepo/mdr_on_linux_server/dockerfiles/MDR_Harvester$ docker-compose up --remove-orphans biolincc
Creating network "mdr_harvester_default" with the default driver
Creating mdr-harvester-biolincc ... done
Attaching to mdr-harvester-biolincc
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   Source_id is 101900
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   Type_id is 1
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   
mdr-harvester-biolincc | 
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   **** STARTING HARVESTER ****
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   ======================================================================
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   For source: 101900: biolincc
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   ======================================================================
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   
mdr-harvester-biolincc | 
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   **** RECREATE DATABASE TABLES ****
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   Study tables recreated
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   Object tables recreated
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   Harvest event 15755 began
mdr-harvester-biolincc | 
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   **** PROCESS DATA ****
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   Records harvested: 100
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   Records harvested: 200
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   WTF - the file at F:\MDR_Data\biolincc\ARDSNet-LASRS.json does not seem to exist
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   WTF - the file at F:\MDR_Data\biolincc\CureSC-SCD.json does not seem to exist
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   WTF - the file at F:\MDR_Data\biolincc\HCT for SCD.json does not seem to exist
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   Number of source JSON files: 289
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   Number of files harvested: 289
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   Harvest event 15755 ended
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   TABLE RECORD NUMBERS
mdr-harvester-biolincc | 
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   **** STUDY TABLES ****
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   286 records found in sd.studies
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   558 records found in sd.study_identifiers, from 286 studies
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   572 records found in sd.study_titles, from 286 studies
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   259 records found in sd.study_organisations, from 259 studies
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   3095 records found in sd.study_references, from 268 studies
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   45 records found in sd.study_relationships, from 29 studies
mdr-harvester-biolincc | 
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   **** OBJECT TABLES ****
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   1884 records found in sd.data_objects
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   1219 records found in sd.object_titles, from 1219 objects
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   1606 records found in sd.object_instances, from 1606 objects
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   278 records found in sd.object_datasets, from 278 objects
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   278 records found in sd.object_dates, from 278 objects
mdr-harvester-biolincc | 
mdr-harvester-biolincc | 10/03/2024 : 04:02 :   **** CLOSING LOG ****
mdr-harvester-biolincc exited with code 0
```

On the biolincc.mn.source_data table ARDSNet-LASRS.json, CureSC-SCD.json, HCT for SCD.json being downloaded 
previously then 2020-09-23 still have the Windows path:
`F:\MDR_Data\biolincc\..`

Re-running the downloader setting an earlier date. 