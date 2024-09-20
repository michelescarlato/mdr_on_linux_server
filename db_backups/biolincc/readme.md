
Backing up an object on the server 'MDR_DB (51.103.39.152:5432)' from database 'biolincc'
```
Running command:
/usr/bin/pg_dump --file "/home/michelescarlato/IdeaProjects/mdr_on_linux_server/db_backups/biolincc/biolincc_19_9_2024.backup" --host "51.103.39.152" --port "5432" --username "postgres" --no-password --format=c --blobs --verbose --schema "ad" --schema "mn" --schema "sd" --schema "te" "biolincc"
 Start time: Fri Sep 20 2024 09:01:22 GMT+0200 (Central European Summer Time)
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
pg_dump: dumping contents of table "ad.object_datasets"
pg_dump: dumping contents of table "ad.object_dates"
pg_dump: dumping contents of table "ad.object_instances"
pg_dump: dumping contents of table "ad.object_titles"
pg_dump: dumping contents of table "ad.studies"
pg_dump: dumping contents of table "ad.study_identifiers"
pg_dump: dumping contents of table "ad.study_organisations"
pg_dump: dumping contents of table "ad.study_references"
pg_dump: dumping contents of table "ad.study_relationships"
pg_dump: dumping contents of table "ad.study_titles"
pg_dump: dumping contents of table "ad.temp_city_names"
pg_dump: dumping contents of table "ad.temp_country_names"
pg_dump: dumping contents of table "mn.biolincc_nct_links"
pg_dump: dumping contents of table "mn.document_types"
pg_dump: dumping contents of table "mn.multiple_hlbis"
pg_dump: dumping contents of table "mn.multiple_ncts"
pg_dump: dumping contents of table "mn.source_data"
pg_dump: dumping contents of table "sd.data_objects"
pg_dump: dumping contents of table "sd.object_datasets"
pg_dump: dumping contents of table "sd.object_dates"
pg_dump: dumping contents of table "sd.object_instances"
pg_dump: dumping contents of table "sd.object_titles"
pg_dump: dumping contents of table "sd.studies"
pg_dump: dumping contents of table "sd.study_identifiers"
pg_dump: dumping contents of table "sd.study_organisations"
pg_dump: dumping contents of table "sd.study_references"
pg_dump: dumping contents of table "sd.study_relationships"
pg_dump: dumping contents of table "sd.study_titles"
pg_dump: dumping contents of table "te.data_objects"
pg_dump: dumping contents of table "te.object_datasets"
pg_dump: dumping contents of table "te.object_dates"
pg_dump: dumping contents of table "te.object_instances"
pg_dump: dumping contents of table "te.object_titles"
pg_dump: dumping contents of table "te.studies"
pg_dump: dumping contents of table "te.study_identifiers"
pg_dump: dumping contents of table "te.study_organisations"
pg_dump: dumping contents of table "te.study_references"
pg_dump: dumping contents of table "te.study_relationships"
pg_dump: dumping contents of table "te.study_titles"
Successfully completed.
```

```
Restoring backup on the server 'krang 172.22.68.113 (172.22.68.113:5432)'
Running command:
/usr/bin/pg_restore --host "172.22.68.113" --port "5432" --username "postgres" --no-password --dbname "biolincc" --verbose "/home/michelescarlato/IdeaProjects/mdr_on_linux_server/db_backups/biolincc/biolincc_19_9_2024.backup"
 Start time: Fri Sep 20 2024 09:03:36 GMT+0200 (Central European Summer Time)
pg_restore: connecting to database for restore
pg_restore: creating SCHEMA "ad"
pg_restore: creating SCHEMA "mn"
pg_restore: creating SCHEMA "sd"
pg_restore: creating SCHEMA "te"
pg_restore: creating TABLE "ad.data_objects"
pg_restore: creating SEQUENCE "ad.data_objects_id_seq"
pg_restore: creating TABLE "ad.object_datasets"
pg_restore: creating SEQUENCE "ad.object_datasets_id_seq"
pg_restore: creating TABLE "ad.object_dates"
pg_restore: creating SEQUENCE "ad.object_dates_id_seq"
pg_restore: creating TABLE "ad.object_instances"
pg_restore: creating SEQUENCE "ad.object_instances_id_seq"
pg_restore: creating TABLE "ad.object_titles"
pg_restore: creating SEQUENCE "ad.object_titles_id_seq"
pg_restore: creating TABLE "ad.studies"
pg_restore: creating SEQUENCE "ad.studies_id_seq"
pg_restore: creating TABLE "ad.study_identifiers"
pg_restore: creating SEQUENCE "ad.study_identifiers_id_seq"
pg_restore: creating TABLE "ad.study_organisations"
pg_restore: creating SEQUENCE "ad.study_organisations_id_seq"
pg_restore: creating TABLE "ad.study_references"
pg_restore: creating SEQUENCE "ad.study_references_id_seq"
pg_restore: creating TABLE "ad.study_relationships"
pg_restore: creating SEQUENCE "ad.study_relationships_id_seq"
pg_restore: creating TABLE "ad.study_titles"
pg_restore: creating SEQUENCE "ad.study_titles_id_seq"
pg_restore: creating TABLE "ad.temp_city_names"
pg_restore: creating TABLE "ad.temp_country_names"
pg_restore: creating TABLE "mn.biolincc_nct_links"
pg_restore: creating TABLE "mn.document_types"
pg_restore: creating SEQUENCE "mn.document_types_id_seq"
pg_restore: creating TABLE "mn.multiple_hlbis"
pg_restore: creating TABLE "mn.multiple_ncts"
pg_restore: creating TABLE "mn.source_data"
pg_restore: creating SEQUENCE "mn.source_data_id_seq"
pg_restore: creating TABLE "sd.data_objects"
pg_restore: creating SEQUENCE "sd.data_objects_id_seq"
pg_restore: creating TABLE "sd.object_datasets"
pg_restore: creating SEQUENCE "sd.object_datasets_id_seq"
pg_restore: creating TABLE "sd.object_dates"
pg_restore: creating SEQUENCE "sd.object_dates_id_seq"
pg_restore: creating TABLE "sd.object_instances"
pg_restore: creating SEQUENCE "sd.object_instances_id_seq"
pg_restore: creating TABLE "sd.object_titles"
pg_restore: creating SEQUENCE "sd.object_titles_id_seq"
pg_restore: creating TABLE "sd.studies"
pg_restore: creating SEQUENCE "sd.studies_id_seq"
pg_restore: creating TABLE "sd.study_identifiers"
pg_restore: creating SEQUENCE "sd.study_identifiers_id_seq"
pg_restore: creating TABLE "sd.study_organisations"
pg_restore: creating SEQUENCE "sd.study_organisations_id_seq"
pg_restore: creating TABLE "sd.study_references"
pg_restore: creating SEQUENCE "sd.study_references_id_seq"
pg_restore: creating TABLE "sd.study_relationships"
pg_restore: creating SEQUENCE "sd.study_relationships_id_seq"
pg_restore: creating TABLE "sd.study_titles"
pg_restore: creating SEQUENCE "sd.study_titles_id_seq"
pg_restore: creating TABLE "te.data_objects"
pg_restore: creating SEQUENCE "te.data_objects_id_seq"
pg_restore: creating TABLE "te.object_datasets"
pg_restore: creating SEQUENCE "te.object_datasets_id_seq"
pg_restore: creating TABLE "te.object_dates"
pg_restore: creating SEQUENCE "te.object_dates_id_seq"
pg_restore: creating TABLE "te.object_instances"
pg_restore: creating SEQUENCE "te.object_instances_id_seq"
pg_restore: creating TABLE "te.object_titles"
pg_restore: creating SEQUENCE "te.object_titles_id_seq"
pg_restore: creating TABLE "te.studies"
pg_restore: creating SEQUENCE "te.studies_id_seq"
pg_restore: creating TABLE "te.study_identifiers"
pg_restore: creating SEQUENCE "te.study_identifiers_id_seq"
pg_restore: creating TABLE "te.study_organisations"
pg_restore: creating SEQUENCE "te.study_organisations_id_seq"
pg_restore: creating TABLE "te.study_references"
pg_restore: creating SEQUENCE "te.study_references_id_seq"
pg_restore: creating TABLE "te.study_relationships"
pg_restore: creating SEQUENCE "te.study_relationships_id_seq"
pg_restore: creating TABLE "te.study_titles"
pg_restore: creating SEQUENCE "te.study_titles_id_seq"
pg_restore: processing data for table "ad.data_objects"
pg_restore: processing data for table "ad.object_datasets"
pg_restore: processing data for table "ad.object_dates"
pg_restore: processing data for table "ad.object_instances"
pg_restore: processing data for table "ad.object_titles"
pg_restore: processing data for table "ad.studies"
pg_restore: processing data for table "ad.study_identifiers"
pg_restore: processing data for table "ad.study_organisations"
pg_restore: processing data for table "ad.study_references"
pg_restore: processing data for table "ad.study_relationships"
pg_restore: processing data for table "ad.study_titles"
pg_restore: processing data for table "ad.temp_city_names"
pg_restore: processing data for table "ad.temp_country_names"
pg_restore: processing data for table "mn.biolincc_nct_links"
pg_restore: processing data for table "mn.document_types"
pg_restore: processing data for table "mn.multiple_hlbis"
pg_restore: processing data for table "mn.multiple_ncts"
pg_restore: processing data for table "mn.source_data"
pg_restore: processing data for table "sd.data_objects"
pg_restore: processing data for table "sd.object_datasets"
pg_restore: processing data for table "sd.object_dates"
pg_restore: processing data for table "sd.object_instances"
pg_restore: processing data for table "sd.object_titles"
pg_restore: processing data for table "sd.studies"
pg_restore: processing data for table "sd.study_identifiers"
pg_restore: processing data for table "sd.study_organisations"
pg_restore: processing data for table "sd.study_references"
pg_restore: processing data for table "sd.study_relationships"
pg_restore: processing data for table "sd.study_titles"
pg_restore: processing data for table "te.data_objects"
pg_restore: processing data for table "te.object_datasets"
pg_restore: processing data for table "te.object_dates"
pg_restore: processing data for table "te.object_instances"
pg_restore: processing data for table "te.object_titles"
pg_restore: processing data for table "te.studies"
pg_restore: processing data for table "te.study_identifiers"
pg_restore: processing data for table "te.study_organisations"
pg_restore: processing data for table "te.study_references"
pg_restore: processing data for table "te.study_relationships"
pg_restore: processing data for table "te.study_titles"
pg_restore: executing SEQUENCE SET data_objects_id_seq
pg_restore: executing SEQUENCE SET object_datasets_id_seq
pg_restore: executing SEQUENCE SET object_dates_id_seq
pg_restore: executing SEQUENCE SET object_instances_id_seq
pg_restore: executing SEQUENCE SET object_titles_id_seq
pg_restore: executing SEQUENCE SET studies_id_seq
pg_restore: executing SEQUENCE SET study_identifiers_id_seq
pg_restore: executing SEQUENCE SET study_organisations_id_seq
pg_restore: executing SEQUENCE SET study_references_id_seq
pg_restore: executing SEQUENCE SET study_relationships_id_seq
pg_restore: executing SEQUENCE SET study_titles_id_seq
pg_restore: executing SEQUENCE SET document_types_id_seq
pg_restore: executing SEQUENCE SET source_data_id_seq
pg_restore: executing SEQUENCE SET data_objects_id_seq
pg_restore: executing SEQUENCE SET object_datasets_id_seq
pg_restore: executing SEQUENCE SET object_dates_id_seq
pg_restore: executing SEQUENCE SET object_instances_id_seq
pg_restore: executing SEQUENCE SET object_titles_id_seq
pg_restore: executing SEQUENCE SET studies_id_seq
pg_restore: executing SEQUENCE SET study_identifiers_id_seq
pg_restore: executing SEQUENCE SET study_organisations_id_seq
pg_restore: executing SEQUENCE SET study_references_id_seq
pg_restore: executing SEQUENCE SET study_relationships_id_seq
pg_restore: executing SEQUENCE SET study_titles_id_seq
pg_restore: executing SEQUENCE SET data_objects_id_seq
pg_restore: executing SEQUENCE SET object_datasets_id_seq
pg_restore: executing SEQUENCE SET object_dates_id_seq
pg_restore: executing SEQUENCE SET object_instances_id_seq
pg_restore: executing SEQUENCE SET object_titles_id_seq
pg_restore: executing SEQUENCE SET studies_id_seq
pg_restore: executing SEQUENCE SET study_identifiers_id_seq
pg_restore: executing SEQUENCE SET study_organisations_id_seq
pg_restore: executing SEQUENCE SET study_references_id_seq
pg_restore: executing SEQUENCE SET study_relationships_id_seq
pg_restore: executing SEQUENCE SET study_titles_id_seq
pg_restore: creating CONSTRAINT "ad.data_objects data_objects_pkey"
pg_restore: creating CONSTRAINT "ad.object_datasets object_datasets_pkey"
pg_restore: creating CONSTRAINT "ad.object_dates object_dates_pkey"
pg_restore: creating CONSTRAINT "ad.object_instances object_instances_pkey"
pg_restore: creating CONSTRAINT "ad.object_titles object_titles_pkey"
pg_restore: creating CONSTRAINT "ad.studies studies_pkey"
pg_restore: creating CONSTRAINT "ad.study_identifiers study_identifiers_pkey"
pg_restore: creating CONSTRAINT "ad.study_organisations study_organisations_pkey"
pg_restore: creating CONSTRAINT "ad.study_references study_references_pkey"
pg_restore: creating CONSTRAINT "ad.study_relationships study_relationships_pkey"
pg_restore: creating CONSTRAINT "ad.study_titles study_titles_pkey"
pg_restore: creating CONSTRAINT "mn.document_types document_types_pkey"
pg_restore: creating CONSTRAINT "mn.source_data source_data_pkey"
pg_restore: creating CONSTRAINT "sd.data_objects data_objects_pkey"
pg_restore: creating CONSTRAINT "sd.object_datasets object_datasets_pkey"
pg_restore: creating CONSTRAINT "sd.object_dates object_dates_pkey"
pg_restore: creating CONSTRAINT "sd.object_instances object_instances_pkey"
pg_restore: creating CONSTRAINT "sd.object_titles object_titles_pkey"
pg_restore: creating CONSTRAINT "sd.studies studies_pkey"
pg_restore: creating CONSTRAINT "sd.study_identifiers study_identifiers_pkey"
pg_restore: creating CONSTRAINT "sd.study_organisations study_organisations_pkey"
pg_restore: creating CONSTRAINT "sd.study_references study_references_pkey"
pg_restore: creating CONSTRAINT "sd.study_relationships study_relationships_pkey"
pg_restore: creating CONSTRAINT "sd.study_titles study_titles_pkey"
pg_restore: creating CONSTRAINT "te.data_objects data_objects_pkey"
pg_restore: creating CONSTRAINT "te.object_datasets object_datasets_pkey"
pg_restore: creating CONSTRAINT "te.object_dates object_dates_pkey"
pg_restore: creating CONSTRAINT "te.object_instances object_instances_pkey"
pg_restore: creating CONSTRAINT "te.object_titles object_titles_pkey"
pg_restore: creating CONSTRAINT "te.studies studies_pkey"
pg_restore: creating CONSTRAINT "te.study_identifiers study_identifiers_pkey"
pg_restore: creating CONSTRAINT "te.study_organisations study_organisations_pkey"
pg_restore: creating CONSTRAINT "te.study_references study_references_pkey"
pg_restore: creating CONSTRAINT "te.study_relationships study_relationships_pkey"
pg_restore: creating CONSTRAINT "te.study_titles study_titles_pkey"
pg_restore: creating INDEX "ad.data_objects_oid"
pg_restore: creating INDEX "ad.data_objects_sid"
pg_restore: creating INDEX "ad.object_datasets_oid"
pg_restore: creating INDEX "ad.object_dates_oid"
pg_restore: creating INDEX "ad.object_instances_oid"
pg_restore: creating INDEX "ad.object_titles_oid"
pg_restore: creating INDEX "ad.studies_sid"
pg_restore: creating INDEX "ad.study_identifiers_sid"
pg_restore: creating INDEX "ad.study_organisations_sid"
pg_restore: creating INDEX "ad.study_references_sid"
pg_restore: creating INDEX "ad.study_relationships_sid"
pg_restore: creating INDEX "ad.study_relationships_target_sid"
pg_restore: creating INDEX "ad.study_titles_sid"
pg_restore: creating INDEX "mn.source_sd_sid"
pg_restore: creating INDEX "sd.data_objects_sd_oid"
pg_restore: creating INDEX "sd.data_objects_sd_sid"
pg_restore: creating INDEX "sd.object_datasets_sd_oid"
pg_restore: creating INDEX "sd.object_dates_sd_oid"
pg_restore: creating INDEX "sd.object_instances_sd_oid"
pg_restore: creating INDEX "sd.object_titles_sd_oid"
pg_restore: creating INDEX "sd.studies_sid"
pg_restore: creating INDEX "sd.study_identifiers_sd_sid"
pg_restore: creating INDEX "sd.study_organisations_sd_sid"
pg_restore: creating INDEX "sd.study_references_sd_sid"
pg_restore: creating INDEX "sd.study_relationships_sd_sid"
pg_restore: creating INDEX "sd.study_relationships_target_sd_sid"
pg_restore: creating INDEX "sd.study_titles_sd_sid"
pg_restore: creating INDEX "te.data_objects_oid"
pg_restore: creating INDEX "te.data_objects_sid"
pg_restore: creating INDEX "te.object_datasets_oid"
pg_restore: creating INDEX "te.object_dates_oid"
pg_restore: creating INDEX "te.object_instances_oid"
pg_restore: creating INDEX "te.object_titles_oid"
pg_restore: creating INDEX "te.studies_sid"
pg_restore: creating INDEX "te.study_identifiers_sid"
pg_restore: creating INDEX "te.study_organisations_sid"
pg_restore: creating INDEX "te.study_references_sid"
pg_restore: creating INDEX "te.study_relationships_sid"
pg_restore: creating INDEX "te.study_relationships_target_sid"
pg_restore: creating INDEX "te.study_titles_sid"
Successfully completed.
Execution time: 92.55 seconds
```