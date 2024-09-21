```
Backing up an object on the server 'PostgreSQL 15 (localhost:5432)' from database 'mon'
Running command:
C:\Program Files\pgAdmin 4\v7\runtime\pg_dump.exe --file "F:\\MDR_DBBackups\\21_09_2024\\21_09_2024_mon.backup" --host "localhost" --port "5432" --username "postgres" --no-password --verbose --format=c --blobs "mon"
 Start time: Sat Sep 21 2024 21:22:51 GMT+0200 (Central European Summer Time)
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
pg_dump: dumping contents of table "sf.agg_events"
pg_dump: dumping contents of table "sf.agg_iec_events"
pg_dump: dumping contents of table "sf.agg_iec_source_numbers"
pg_dump: dumping contents of table "sf.agg_object_numbers"
pg_dump: dumping contents of table "sf.agg_source_summaries"
pg_dump: dumping contents of table "sf.agg_study_1to1_link_data"
pg_dump: dumping contents of table "sf.agg_study_1ton_link_data"
pg_dump: dumping contents of table "sf.agg_summaries"
pg_dump: dumping contents of table "sf.coding_events"
pg_dump: dumping contents of table "sf.dl_events"
pg_dump: dumping contents of table "sf.dl_filters"
pg_dump: dumping contents of table "sf.dl_types"
pg_dump: dumping contents of table "sf.harvest_events"
pg_dump: dumping contents of table "sf.import_events"
pg_dump: dumping contents of table "sf.objects_for_testing"
pg_dump: dumping contents of table "sf.source_ad_summaries"
pg_dump: dumping contents of table "sf.source_parameters"
pg_dump: dumping contents of table "sf.studies_for_testing"
pg_dump: dumping contents of table "sf.xaggregation_summaries"
pg_dump: dumping contents of table "sf.xsource_data_objects"
pg_dump: dumping contents of table "sf.xsource_data_studies"
pg_dump: dumping contents of table "sf.xsource_parameters"
Successfully completed.
Execution time: 14.39 seconds
```

```
Restoring backup on the server 'krang linux (leman73.homelinux.org:5432)'
Running command:
C:\Program Files\pgAdmin 4\v7\runtime\pg_restore.exe --host "leman73.homelinux.org" --port "5432" --username "postgres" --no-password --dbname "mon" --verbose "F:\\MDR_DBBackups\\21_09_2024\\21_09_2024_mon.backup"
 Start time: Sat Sep 21 2024 21:24:20 GMT+0200 (Central European Summer Time)
pg_restore: connecting to database for restore
pg_restore: creating SCHEMA "sf"
pg_restore: creating TABLE "sf.agg_events"
pg_restore: creating TABLE "sf.agg_iec_events"
pg_restore: creating TABLE "sf.agg_iec_source_numbers"
pg_restore: creating TABLE "sf.agg_object_numbers"
pg_restore: creating TABLE "sf.agg_source_summaries"
pg_restore: creating TABLE "sf.agg_study_1to1_link_data"
pg_restore: creating SEQUENCE "sf.agg_study_1to1_link_data_id_seq"
pg_restore: creating TABLE "sf.agg_study_1ton_link_data"
pg_restore: creating SEQUENCE "sf.agg_study_1ton_link_data_id_seq"
pg_restore: creating TABLE "sf.agg_summaries"
pg_restore: creating SEQUENCE "sf.aggregation_object_numbers_id_seq"
pg_restore: creating SEQUENCE "sf.aggregation_summaries2_id_seq"
pg_restore: creating TABLE "sf.xaggregation_summaries"
pg_restore: creating SEQUENCE "sf.aggregation_summaries_id_seq"
pg_restore: creating TABLE "sf.coding_events"
pg_restore: creating TABLE "sf.dl_events"
pg_restore: creating TABLE "sf.dl_filters"
pg_restore: creating TABLE "sf.dl_types"
pg_restore: creating SEQUENCE "sf.focused_searches_id_seq"
pg_restore: creating TABLE "sf.harvest_events"
pg_restore: creating SEQUENCE "sf.iec_agg_source_numbers_id_seq"
pg_restore: creating TABLE "sf.import_events"
pg_restore: creating TABLE "sf.objects_for_testing"
pg_restore: creating TABLE "sf.source_ad_summaries"
pg_restore: creating SEQUENCE "sf.source_ad_summaries_id_seq"
pg_restore: creating TABLE "sf.xsource_data_objects"
pg_restore: creating SEQUENCE "sf.source_data_objects_id_seq"
pg_restore: creating TABLE "sf.xsource_data_studies"
pg_restore: creating SEQUENCE "sf.source_data_studies2_id_seq"
pg_restore: creating TABLE "sf.source_parameters"
pg_restore: creating SEQUENCE "sf.source_summaries_id_seq"
pg_restore: creating TABLE "sf.studies_for_testing"
pg_restore: creating TABLE "sf.xsource_parameters"
pg_restore: processing data for table "sf.agg_events"
pg_restore: processing data for table "sf.agg_iec_events"
pg_restore: processing data for table "sf.agg_iec_source_numbers"
pg_restore: processing data for table "sf.agg_object_numbers"
pg_restore: processing data for table "sf.agg_source_summaries"
pg_restore: processing data for table "sf.agg_study_1to1_link_data"
pg_restore: processing data for table "sf.agg_study_1ton_link_data"
pg_restore: processing data for table "sf.agg_summaries"
pg_restore: processing data for table "sf.coding_events"
pg_restore: processing data for table "sf.dl_events"
pg_restore: processing data for table "sf.dl_filters"
pg_restore: processing data for table "sf.dl_types"
pg_restore: processing data for table "sf.harvest_events"
pg_restore: processing data for table "sf.import_events"
pg_restore: processing data for table "sf.objects_for_testing"
pg_restore: processing data for table "sf.source_ad_summaries"
pg_restore: processing data for table "sf.source_parameters"
pg_restore: processing data for table "sf.studies_for_testing"
pg_restore: processing data for table "sf.xaggregation_summaries"
pg_restore: processing data for table "sf.xsource_data_objects"
pg_restore: processing data for table "sf.xsource_data_studies"
pg_restore: processing data for table "sf.xsource_parameters"
pg_restore: executing SEQUENCE SET agg_study_1to1_link_data_id_seq
pg_restore: executing SEQUENCE SET agg_study_1ton_link_data_id_seq
pg_restore: executing SEQUENCE SET aggregation_object_numbers_id_seq
pg_restore: executing SEQUENCE SET aggregation_summaries2_id_seq
pg_restore: executing SEQUENCE SET aggregation_summaries_id_seq
pg_restore: executing SEQUENCE SET focused_searches_id_seq
pg_restore: executing SEQUENCE SET iec_agg_source_numbers_id_seq
pg_restore: executing SEQUENCE SET source_ad_summaries_id_seq
pg_restore: executing SEQUENCE SET source_data_objects_id_seq
pg_restore: executing SEQUENCE SET source_data_studies2_id_seq
pg_restore: executing SEQUENCE SET source_summaries_id_seq
pg_restore: creating CONSTRAINT "sf.agg_events aggregation_events_pk"
pg_restore: creating CONSTRAINT "sf.xaggregation_summaries aggregation_summaries2_pkey"
pg_restore: creating CONSTRAINT "sf.agg_summaries aggregation_summaries_pkey"
pg_restore: creating CONSTRAINT "sf.coding_events coding_events_pk"
pg_restore: creating CONSTRAINT "sf.dl_filters focused_searches_pkey"
pg_restore: creating CONSTRAINT "sf.harvest_events harvest_events_pk"
pg_restore: creating CONSTRAINT "sf.agg_iec_events iec_agg_events_pkey"
pg_restore: creating CONSTRAINT "sf.import_events import_events2_pk"
pg_restore: creating CONSTRAINT "sf.dl_types saf_types_pkey"
pg_restore: creating CONSTRAINT "sf.dl_events sf_pk2"
pg_restore: creating CONSTRAINT "sf.source_ad_summaries source_ad_summaries_pkey"
pg_restore: creating CONSTRAINT "sf.xsource_data_objects source_data_objects_pkey"
pg_restore: creating CONSTRAINT "sf.xsource_data_studies source_data_studies_pkey"
pg_restore: creating CONSTRAINT "sf.xsource_parameters source_parameters_pkey"
pg_restore: creating CONSTRAINT "sf.source_parameters source_parameters_pkeyn"
pg_restore: creating CONSTRAINT "sf.agg_source_summaries source_summaries2_pkey"
pg_restore: creating INDEX "sf.source_data_objects_sourceid_sdid2"
pg_restore: creating INDEX "sf.source_data_studies_sourceid_sdid"
Successfully completed.
Execution time: 12.09 seconds
```
