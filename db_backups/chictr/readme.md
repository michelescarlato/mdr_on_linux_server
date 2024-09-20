```
Backing up an object on the server 'MDR_DB (51.103.39.152:5432)' from database 'chictr'
Running command:
/usr/bin/pg_dump --file "/home/michelescarlato/IdeaProjects/mdr_on_linux_server/db_backups/chictr/chictr_19_9_2024.backup" --host "51.103.39.152" --port "5432" --username "postgres" --no-password --format=c --blobs --verbose "chictr"
 Start time: Fri Sep 20 2024 13:01:02 GMT+0200 (Central European Summer Time)
pg_dump: last built-in OID is 16383
pg_dump: reading extensions
pg_dump: identifying extension members
pg_dump: reading schemas
pg_dump: reading user-defined tables
pg_dump: reading user-defined functions
pg_dump: reading user-defined types
pg_dump: reading procedural languages
pg_dump: reading user-defined aggregate functions
pg_dump: reading user-defined operators
pg_dump: reading user-defined access methods
pg_dump: reading user-defined operator classes
pg_dump: reading user-defined operator families
pg_dump: reading user-defined text search parsers
pg_dump: reading user-defined text search templates
pg_dump: reading user-defined text search dictionaries
pg_dump: reading user-defined text search configurations
pg_dump: reading user-defined foreign-data wrappers
pg_dump: reading user-defined foreign servers
pg_dump: reading default privileges
pg_dump: reading user-defined collations
pg_dump: reading user-defined conversions
pg_dump: reading type casts
pg_dump: reading transforms
pg_dump: reading table inheritance information
pg_dump: reading event triggers
pg_dump: finding extension tables
pg_dump: finding inheritance relationships
pg_dump: reading column info for interesting tables
pg_dump: finding table default expressions
pg_dump: flagging inherited columns in subtables
pg_dump: reading partitioning data
pg_dump: reading indexes
pg_dump: flagging indexes in partitioned tables
pg_dump: reading extended statistics
pg_dump: reading constraints
pg_dump: reading triggers
pg_dump: reading rewrite rules
pg_dump: reading policies
pg_dump: reading row-level security policies
pg_dump: reading publications
pg_dump: reading publication membership of tables
pg_dump: reading publication membership of schemas
pg_dump: reading subscriptions
pg_dump: reading large objects
pg_dump: reading dependency data
pg_dump: saving encoding = UTF8
pg_dump: saving standard_conforming_strings = on
pg_dump: saving search_path =
pg_dump: saving database definition
pg_dump: dumping contents of table "ad.data_objects"
pg_dump: dumping contents of table "ad.object_dates"
pg_dump: dumping contents of table "ad.object_instances"
pg_dump: dumping contents of table "ad.object_titles"
pg_dump: dumping contents of table "ad.studies"
pg_dump: dumping contents of table "ad.study_conditions"
pg_dump: dumping contents of table "ad.study_countries"
pg_dump: dumping contents of table "ad.study_features"
pg_dump: dumping contents of table "ad.study_identifiers"
pg_dump: dumping contents of table "ad.study_iec_13to19"
pg_dump: dumping contents of table "ad.study_iec_20on"
pg_dump: dumping contents of table "ad.study_iec_upto12"
pg_dump: dumping contents of table "ad.study_organisations"
pg_dump: dumping contents of table "ad.study_people"
pg_dump: dumping contents of table "ad.study_titles"
pg_dump: dumping contents of table "ad.temp_city_names"
pg_dump: dumping contents of table "ad.temp_country_names"
pg_dump: dumping contents of table "ad.temp_mult_conds"
pg_dump: dumping contents of table "mn.source_data"
pg_dump: dumping contents of table "sd.data_objects"
pg_dump: dumping contents of table "sd.object_dates"
pg_dump: dumping contents of table "sd.object_instances"
pg_dump: dumping contents of table "sd.object_titles"
pg_dump: dumping contents of table "sd.studies"
pg_dump: dumping contents of table "sd.study_conditions"
pg_dump: dumping contents of table "sd.study_countries"
pg_dump: dumping contents of table "sd.study_features"
pg_dump: dumping contents of table "sd.study_identifiers"
pg_dump: dumping contents of table "sd.study_iec_13to19"
pg_dump: dumping contents of table "sd.study_iec_20on"
pg_dump: dumping contents of table "sd.study_iec_upto12"
pg_dump: dumping contents of table "sd.study_organisations"
pg_dump: dumping contents of table "sd.study_people"
pg_dump: dumping contents of table "sd.study_titles"
pg_dump: dumping contents of table "te.data_objects"
pg_dump: dumping contents of table "te.object_dates"
pg_dump: dumping contents of table "te.object_instances"
pg_dump: dumping contents of table "te.object_titles"
pg_dump: dumping contents of table "te.studies"
pg_dump: dumping contents of table "te.study_conditions"
pg_dump: dumping contents of table "te.study_countries"
pg_dump: dumping contents of table "te.study_features"
pg_dump: dumping contents of table "te.study_identifiers"
pg_dump: dumping contents of table "te.study_iec_13to19"
pg_dump: dumping contents of table "te.study_iec_20on"
pg_dump: dumping contents of table "te.study_iec_upto12"
pg_dump: dumping contents of table "te.study_organisations"
pg_dump: dumping contents of table "te.study_people"
pg_dump: dumping contents of table "te.study_titles"
Successfully completed.
Execution time: 225.07 seconds
```

```
Restoring backup on the server 'krang 172.22.68.113 (172.22.68.113:5432)'
Running command:
/usr/bin/pg_restore --host "172.22.68.113" --port "5432" --username "postgres" --no-password --dbname "chictr" --verbose "/home/michelescarlato/IdeaProjects/mdr_on_linux_server/db_backups/chictr/chictr_19_9_2024.backup"
 Start time: Fri Sep 20 2024 13:09:06 GMT+0200 (Central European Summer Time)
pg_restore: connecting to database for restore
pg_restore: creating SCHEMA "ad"
pg_restore: creating SCHEMA "mn"
pg_restore: creating SCHEMA "sd"
pg_restore: creating SCHEMA "te"
pg_restore: creating EXTENSION "postgres_fdw"
pg_restore: creating COMMENT "EXTENSION postgres_fdw"
pg_restore: creating TABLE "ad.data_objects"
pg_restore: creating SEQUENCE "ad.data_objects_id_seq"
pg_restore: creating TABLE "ad.object_dates"
pg_restore: creating SEQUENCE "ad.object_dates_id_seq"
pg_restore: creating TABLE "ad.object_instances"
pg_restore: creating SEQUENCE "ad.object_instances_id_seq"
pg_restore: creating TABLE "ad.object_titles"
pg_restore: creating SEQUENCE "ad.object_titles_id_seq"
pg_restore: creating TABLE "ad.studies"
pg_restore: creating SEQUENCE "ad.studies_id_seq"
pg_restore: creating TABLE "ad.study_conditions"
pg_restore: creating SEQUENCE "ad.study_conditions_id_seq"
pg_restore: creating TABLE "ad.study_countries"
pg_restore: creating SEQUENCE "ad.study_countries_id_seq"
pg_restore: creating TABLE "ad.study_features"
pg_restore: creating SEQUENCE "ad.study_features_id_seq"
pg_restore: creating TABLE "ad.study_identifiers"
pg_restore: creating SEQUENCE "ad.study_identifiers_id_seq"
pg_restore: creating TABLE "ad.study_iec_13to19"
pg_restore: creating SEQUENCE "ad.study_iec_13to19_id_seq"
pg_restore: creating TABLE "ad.study_iec_20on"
pg_restore: creating SEQUENCE "ad.study_iec_20on_id_seq"
pg_restore: creating TABLE "ad.study_iec_upto12"
pg_restore: creating SEQUENCE "ad.study_iec_upto12_id_seq"
pg_restore: creating TABLE "ad.study_organisations"
pg_restore: creating SEQUENCE "ad.study_organisations_id_seq"
pg_restore: creating TABLE "ad.study_people"
pg_restore: creating SEQUENCE "ad.study_people_id_seq"
pg_restore: creating TABLE "ad.study_titles"
pg_restore: creating SEQUENCE "ad.study_titles_id_seq"
pg_restore: creating TABLE "ad.temp_city_names"
pg_restore: creating TABLE "ad.temp_country_names"
pg_restore: creating TABLE "ad.temp_mult_conds"
pg_restore: creating TABLE "mn.source_data"
pg_restore: creating SEQUENCE "mn.source_data_id_seq"
pg_restore: creating TABLE "sd.data_objects"
pg_restore: creating SEQUENCE "sd.data_objects_id_seq"
pg_restore: creating TABLE "sd.object_dates"
pg_restore: creating SEQUENCE "sd.object_dates_id_seq"
pg_restore: creating TABLE "sd.object_instances"
pg_restore: creating SEQUENCE "sd.object_instances_id_seq"
pg_restore: creating TABLE "sd.object_titles"
pg_restore: creating SEQUENCE "sd.object_titles_id_seq"
pg_restore: creating TABLE "sd.studies"
pg_restore: creating SEQUENCE "sd.studies_id_seq"
pg_restore: creating TABLE "sd.study_conditions"
pg_restore: creating SEQUENCE "sd.study_conditions_id_seq"
pg_restore: creating TABLE "sd.study_countries"
pg_restore: creating SEQUENCE "sd.study_countries_id_seq"
pg_restore: creating TABLE "sd.study_features"
pg_restore: creating SEQUENCE "sd.study_features_id_seq"
pg_restore: creating TABLE "sd.study_identifiers"
pg_restore: creating SEQUENCE "sd.study_identifiers_id_seq"
pg_restore: creating TABLE "sd.study_iec_13to19"
pg_restore: creating SEQUENCE "sd.study_iec_13to19_id_seq"
pg_restore: creating TABLE "sd.study_iec_20on"
pg_restore: creating SEQUENCE "sd.study_iec_20on_id_seq"
pg_restore: creating TABLE "sd.study_iec_upto12"
pg_restore: creating SEQUENCE "sd.study_iec_upto12_id_seq"
pg_restore: creating TABLE "sd.study_organisations"
pg_restore: creating SEQUENCE "sd.study_organisations_id_seq"
pg_restore: creating TABLE "sd.study_people"
pg_restore: creating SEQUENCE "sd.study_people_id_seq"
pg_restore: creating TABLE "sd.study_titles"
pg_restore: creating SEQUENCE "sd.study_titles_id_seq"
pg_restore: creating TABLE "te.data_objects"
pg_restore: creating SEQUENCE "te.data_objects_id_seq"
pg_restore: creating TABLE "te.object_dates"
pg_restore: creating SEQUENCE "te.object_dates_id_seq"
pg_restore: creating TABLE "te.object_instances"
pg_restore: creating SEQUENCE "te.object_instances_id_seq"
pg_restore: creating TABLE "te.object_titles"
pg_restore: creating SEQUENCE "te.object_titles_id_seq"
pg_restore: creating TABLE "te.studies"
pg_restore: creating SEQUENCE "te.studies_id_seq"
pg_restore: creating TABLE "te.study_conditions"
pg_restore: creating SEQUENCE "te.study_conditions_id_seq"
pg_restore: creating TABLE "te.study_countries"
pg_restore: creating SEQUENCE "te.study_countries_id_seq"
pg_restore: creating TABLE "te.study_features"
pg_restore: creating SEQUENCE "te.study_features_id_seq"
pg_restore: creating TABLE "te.study_identifiers"
pg_restore: creating SEQUENCE "te.study_identifiers_id_seq"
pg_restore: creating TABLE "te.study_iec_13to19"
pg_restore: creating SEQUENCE "te.study_iec_13to19_id_seq"
pg_restore: creating TABLE "te.study_iec_20on"
pg_restore: creating SEQUENCE "te.study_iec_20on_id_seq"
pg_restore: creating TABLE "te.study_iec_upto12"
pg_restore: creating SEQUENCE "te.study_iec_upto12_id_seq"
pg_restore: creating TABLE "te.study_organisations"
pg_restore: creating SEQUENCE "te.study_organisations_id_seq"
pg_restore: creating TABLE "te.study_people"
pg_restore: creating SEQUENCE "te.study_people_id_seq"
pg_restore: creating TABLE "te.study_titles"
pg_restore: creating SEQUENCE "te.study_titles_id_seq"
pg_restore: processing data for table "ad.data_objects"
pg_restore: processing data for table "ad.object_dates"
pg_restore: processing data for table "ad.object_instances"
pg_restore: error: error returned by PQputCopyData: SSL SYSCALL error: EOF detected
Failed (exit code: 1).
Execution time: 1166.79 seconds
```

re-restoring on Krang