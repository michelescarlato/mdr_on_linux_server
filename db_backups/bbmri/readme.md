backup from prod
```
Backing up an object on the server 'MDR_DB (51.103.39.152:5432)' from database 'bbmri'
Running command:
/usr/bin/pg_dump --file "/home/michelescarlato/IdeaProjects/mdr_on_linux_server/db_backups/bbmri/bbmri_19_9_2024.backup" --host "51.103.39.152" --port "5432" --username "postgres" --no-password --format=c --blobs --verbose --schema "ad" --schema "mn" --schema "sd" "bbmri"
Start time: Thu Sep 19 2024 15:20:03 GMT+0200 (Central European Summer Time)
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
pg_dump: dumping contents of table "ad.object_descriptions"
pg_dump: dumping contents of table "ad.object_identifiers"
pg_dump: dumping contents of table "ad.object_titles"
pg_dump: dumping contents of table "ad.temp_city_names"
pg_dump: dumping contents of table "ad.temp_country_names"
pg_dump: dumping contents of table "mn.object_index"
pg_dump: dumping contents of table "mn.source_data"
Successfully completed.
```
restore on krang
```
Restoring backup on the server 'krang 172.22.68.113 (172.22.68.113:5432)'
Running command:
/usr/bin/pg_restore --host "172.22.68.113" --port "5432" --username "postgres" --no-password --dbname "bbmri" --verbose "/home/michelescarlato/IdeaProjects/mdr_on_linux_server/db_backups/bbmri/bbmri_19_9_2024.backup"
 Start time: Thu Sep 19 2024 15:22:38 GMT+0200 (Central European Summer Time)
pg_restore: connecting to database for restore
pg_restore: creating SCHEMA "ad"
pg_restore: creating SCHEMA "mn"
pg_restore: creating SCHEMA "sd"
pg_restore: creating TABLE "ad.data_objects"
pg_restore: creating SEQUENCE "ad.data_objects_id_seq"
pg_restore: creating TABLE "ad.object_descriptions"
pg_restore: creating SEQUENCE "ad.object_descriptions_id_seq"
pg_restore: creating TABLE "ad.object_identifiers"
pg_restore: creating SEQUENCE "ad.object_identifiers_id_seq"
pg_restore: creating TABLE "ad.object_titles"
pg_restore: creating SEQUENCE "ad.object_titles_id_seq"
pg_restore: creating TABLE "ad.temp_city_names"
pg_restore: creating TABLE "ad.temp_country_names"
pg_restore: creating TABLE "mn.object_index"
pg_restore: creating SEQUENCE "mn.object_index_id_seq"
pg_restore: creating TABLE "mn.source_data"
pg_restore: creating SEQUENCE "mn.source_data_id_seq"
pg_restore: processing data for table "ad.data_objects"
pg_restore: processing data for table "ad.object_descriptions"
pg_restore: processing data for table "ad.object_identifiers"
pg_restore: processing data for table "ad.object_titles"
pg_restore: processing data for table "ad.temp_city_names"
pg_restore: processing data for table "ad.temp_country_names"
pg_restore: processing data for table "mn.object_index"
pg_restore: processing data for table "mn.source_data"
pg_restore: executing SEQUENCE SET data_objects_id_seq
pg_restore: executing SEQUENCE SET object_descriptions_id_seq
pg_restore: executing SEQUENCE SET object_identifiers_id_seq
pg_restore: executing SEQUENCE SET object_titles_id_seq
pg_restore: executing SEQUENCE SET object_index_id_seq
pg_restore: executing SEQUENCE SET source_data_id_seq
pg_restore: creating CONSTRAINT "ad.data_objects data_objects_pkey"
pg_restore: creating CONSTRAINT "ad.object_descriptions object_descriptions_pkey"
pg_restore: creating CONSTRAINT "ad.object_identifiers object_identifiers_pkey"
pg_restore: creating CONSTRAINT "ad.object_titles object_titles_pkey"
pg_restore: creating CONSTRAINT "mn.object_index object_index_pkey"
pg_restore: creating CONSTRAINT "mn.source_data source_data_pkey"
pg_restore: creating INDEX "ad.data_objects_oid"
pg_restore: creating INDEX "ad.data_objects_sid"
pg_restore: creating INDEX "ad.object_descriptions_oid"
pg_restore: creating INDEX "ad.object_identifiers_oid"
pg_restore: creating INDEX "ad.object_titles_oid"
pg_restore: creating INDEX "mn.object_index_srce_sd_sid"
pg_restore: creating INDEX "mn.source_sd_oid"
Successfully completed.
```