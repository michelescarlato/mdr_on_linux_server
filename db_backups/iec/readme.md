```
Backing up an object on the server 'PostgreSQL 15 (localhost:5432)' from database 'iec'
Running command:
C:\Program Files\pgAdmin 4\v7\runtime\pg_dump.exe --file "F:\\MDR_DBBackups\\21_09_2024\\21_09_2024_iec.backup" --host "localhost" --port "5432" --username "postgres" --no-password --verbose --format=c --blobs "iec"
 Start time: Sat Sep 21 2024 18:35:50 GMT+0200 (Central European Summer Time)
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
pg_dump: dumping contents of table "ad.studies"
pg_dump: dumping contents of table "ad.study_iec_0608"
pg_dump: dumping contents of table "ad.study_iec_0910"
pg_dump: dumping contents of table "ad.study_iec_1112"
pg_dump: dumping contents of table "ad.study_iec_1314"
pg_dump: dumping contents of table "ad.study_iec_15"
pg_dump: dumping contents of table "ad.study_iec_16"
pg_dump: dumping contents of table "ad.study_iec_17"
pg_dump: dumping contents of table "ad.study_iec_18"
pg_dump: dumping contents of table "ad.study_iec_19"
pg_dump: dumping contents of table "ad.study_iec_20"
pg_dump: dumping contents of table "ad.study_iec_21"
pg_dump: dumping contents of table "ad.study_iec_22"
pg_dump: dumping contents of table "ad.study_iec_23"
pg_dump: dumping contents of table "ad.study_iec_24"
pg_dump: dumping contents of table "ad.study_iec_25"
pg_dump: dumping contents of table "ad.study_iec_26"
pg_dump: dumping contents of table "ad.study_iec_27"
pg_dump: dumping contents of table "ad.study_iec_28"
pg_dump: dumping contents of table "ad.study_iec_29"
pg_dump: dumping contents of table "ad.study_iec_30"
pg_dump: dumping contents of table "ad.study_iec_null"
pg_dump: dumping contents of table "ad.study_iec_pre06"
pg_dump: dumping contents of table "ad.temp_gender_eligibility_types"
pg_dump: dumping contents of table "ad.temp_iec_level_types"
pg_dump: dumping contents of table "ad.temp_study_types"
pg_dump: dumping contents of table "ad.temp_time_units"
Successfully completed.
Execution time: 320.78 seconds
```

```
Restoring backup on the server 'krang linux (leman73.homelinux.org:5432)'
Running command:
C:\Program Files\pgAdmin 4\v7\runtime\pg_restore.exe --host "leman73.homelinux.org" --port "5432" --username "postgres" --no-password --dbname "iec" --verbose "F:\\MDR_DBBackups\\21_09_2024\\21_09_2024_iec.backup"
 Start time: Sat Sep 21 2024 18:42:24 GMT+0200 (Central European Summer Time)
pg_restore: connecting to database for restore
pg_restore: creating SCHEMA "ad"
pg_restore: creating SCHEMA "dv"
pg_restore: creating EXTENSION "postgres_fdw"
pg_restore: creating COMMENT "EXTENSION postgres_fdw"
pg_restore: creating TABLE "ad.studies"
pg_restore: creating SEQUENCE "ad.studies_id_seq"
pg_restore: creating TABLE "ad.study_iec_0608"
pg_restore: creating SEQUENCE "ad.study_iec_0608_id_seq"
pg_restore: creating TABLE "ad.study_iec_0910"
pg_restore: creating SEQUENCE "ad.study_iec_0910_id_seq"
pg_restore: creating TABLE "ad.study_iec_1112"
pg_restore: creating SEQUENCE "ad.study_iec_1112_id_seq"
pg_restore: creating TABLE "ad.study_iec_1314"
pg_restore: creating SEQUENCE "ad.study_iec_1314_id_seq"
pg_restore: creating TABLE "ad.study_iec_15"
pg_restore: creating SEQUENCE "ad.study_iec_15_id_seq"
pg_restore: creating TABLE "ad.study_iec_16"
pg_restore: creating SEQUENCE "ad.study_iec_16_id_seq"
pg_restore: creating TABLE "ad.study_iec_17"
pg_restore: creating SEQUENCE "ad.study_iec_17_id_seq"
pg_restore: creating TABLE "ad.study_iec_18"
pg_restore: creating SEQUENCE "ad.study_iec_18_id_seq"
pg_restore: creating TABLE "ad.study_iec_19"
pg_restore: creating SEQUENCE "ad.study_iec_19_id_seq"
pg_restore: creating TABLE "ad.study_iec_20"
pg_restore: creating SEQUENCE "ad.study_iec_20_id_seq"
pg_restore: creating TABLE "ad.study_iec_21"
pg_restore: creating SEQUENCE "ad.study_iec_21_id_seq"
pg_restore: creating TABLE "ad.study_iec_22"
pg_restore: creating SEQUENCE "ad.study_iec_22_id_seq"
pg_restore: creating TABLE "ad.study_iec_23"
pg_restore: creating SEQUENCE "ad.study_iec_23_id_seq"
pg_restore: creating TABLE "ad.study_iec_24"
pg_restore: creating SEQUENCE "ad.study_iec_24_id_seq"
pg_restore: creating TABLE "ad.study_iec_25"
pg_restore: creating SEQUENCE "ad.study_iec_25_id_seq"
pg_restore: creating TABLE "ad.study_iec_26"
pg_restore: creating SEQUENCE "ad.study_iec_26_id_seq"
pg_restore: creating TABLE "ad.study_iec_27"
pg_restore: creating SEQUENCE "ad.study_iec_27_id_seq"
pg_restore: creating TABLE "ad.study_iec_28"
pg_restore: creating SEQUENCE "ad.study_iec_28_id_seq"
pg_restore: creating TABLE "ad.study_iec_29"
pg_restore: creating SEQUENCE "ad.study_iec_29_id_seq"
pg_restore: creating TABLE "ad.study_iec_30"
pg_restore: creating SEQUENCE "ad.study_iec_30_id_seq"
pg_restore: creating TABLE "ad.study_iec_null"
pg_restore: creating SEQUENCE "ad.study_iec_null_id_seq"
pg_restore: creating TABLE "ad.study_iec_pre06"
pg_restore: creating SEQUENCE "ad.study_iec_pre06_id_seq"
pg_restore: creating TABLE "ad.temp_gender_eligibility_types"
pg_restore: creating TABLE "ad.temp_iec_level_types"
pg_restore: creating TABLE "ad.temp_study_types"
pg_restore: creating TABLE "ad.temp_time_units"
pg_restore: processing data for table "ad.studies"
pg_restore: processing data for table "ad.study_iec_0608"
pg_restore: processing data for table "ad.study_iec_0910"
pg_restore: processing data for table "ad.study_iec_1112"
pg_restore: processing data for table "ad.study_iec_1314"
pg_restore: processing data for table "ad.study_iec_15"
pg_restore: processing data for table "ad.study_iec_16"
pg_restore: processing data for table "ad.study_iec_17"
pg_restore: processing data for table "ad.study_iec_18"
pg_restore: processing data for table "ad.study_iec_19"
pg_restore: processing data for table "ad.study_iec_20"
pg_restore: processing data for table "ad.study_iec_21"
pg_restore: processing data for table "ad.study_iec_22"
pg_restore: processing data for table "ad.study_iec_23"
pg_restore: processing data for table "ad.study_iec_24"
pg_restore: processing data for table "ad.study_iec_25"
pg_restore: processing data for table "ad.study_iec_26"
pg_restore: processing data for table "ad.study_iec_27"
pg_restore: processing data for table "ad.study_iec_28"
pg_restore: processing data for table "ad.study_iec_29"
pg_restore: processing data for table "ad.study_iec_30"
pg_restore: processing data for table "ad.study_iec_null"
pg_restore: processing data for table "ad.study_iec_pre06"
pg_restore: processing data for table "ad.temp_gender_eligibility_types"
pg_restore: processing data for table "ad.temp_iec_level_types"
pg_restore: processing data for table "ad.temp_study_types"
pg_restore: processing data for table "ad.temp_time_units"
pg_restore: executing SEQUENCE SET studies_id_seq
pg_restore: executing SEQUENCE SET study_iec_0608_id_seq
pg_restore: executing SEQUENCE SET study_iec_0910_id_seq
pg_restore: executing SEQUENCE SET study_iec_1112_id_seq
pg_restore: executing SEQUENCE SET study_iec_1314_id_seq
pg_restore: executing SEQUENCE SET study_iec_15_id_seq
pg_restore: executing SEQUENCE SET study_iec_16_id_seq
pg_restore: executing SEQUENCE SET study_iec_17_id_seq
pg_restore: executing SEQUENCE SET study_iec_18_id_seq
pg_restore: executing SEQUENCE SET study_iec_19_id_seq
pg_restore: executing SEQUENCE SET study_iec_20_id_seq
pg_restore: executing SEQUENCE SET study_iec_21_id_seq
pg_restore: executing SEQUENCE SET study_iec_22_id_seq
pg_restore: executing SEQUENCE SET study_iec_23_id_seq
pg_restore: executing SEQUENCE SET study_iec_24_id_seq
pg_restore: executing SEQUENCE SET study_iec_25_id_seq
pg_restore: executing SEQUENCE SET study_iec_26_id_seq
pg_restore: executing SEQUENCE SET study_iec_27_id_seq
pg_restore: executing SEQUENCE SET study_iec_28_id_seq
pg_restore: executing SEQUENCE SET study_iec_29_id_seq
pg_restore: executing SEQUENCE SET study_iec_30_id_seq
pg_restore: executing SEQUENCE SET study_iec_null_id_seq
pg_restore: executing SEQUENCE SET study_iec_pre06_id_seq
pg_restore: creating CONSTRAINT "ad.studies studies_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_0608 study_iec_0608_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_0910 study_iec_0910_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_1112 study_iec_1112_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_1314 study_iec_1314_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_15 study_iec_15_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_16 study_iec_16_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_17 study_iec_17_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_18 study_iec_18_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_19 study_iec_19_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_20 study_iec_20_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_21 study_iec_21_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_22 study_iec_22_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_23 study_iec_23_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_24 study_iec_24_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_25 study_iec_25_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_26 study_iec_26_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_27 study_iec_27_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_28 study_iec_28_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_29 study_iec_29_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_30 study_iec_30_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_null study_iec_null_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_pre06 study_iec_pre06_pkey"
pg_restore: creating INDEX "ad.studies_srce_sid"
pg_restore: creating INDEX "ad.studies_study_id"
pg_restore: creating INDEX "ad.study_iec_0608_srce_sid"
pg_restore: creating INDEX "ad.study_iec_0608_study_id"
pg_restore: creating INDEX "ad.study_iec_0910_srce_sid"
pg_restore: creating INDEX "ad.study_iec_0910_study_id"
pg_restore: creating INDEX "ad.study_iec_1112_srce_sid"
pg_restore: creating INDEX "ad.study_iec_1112_study_id"
pg_restore: creating INDEX "ad.study_iec_1314_srce_sid"
pg_restore: creating INDEX "ad.study_iec_1314_study_id"
pg_restore: creating INDEX "ad.study_iec_15_srce_sid"
pg_restore: creating INDEX "ad.study_iec_15_study_id"
pg_restore: creating INDEX "ad.study_iec_16_srce_sid"
pg_restore: creating INDEX "ad.study_iec_16_study_id"
pg_restore: creating INDEX "ad.study_iec_17_srce_sid"
pg_restore: creating INDEX "ad.study_iec_17_study_id"
pg_restore: creating INDEX "ad.study_iec_18_srce_sid"
pg_restore: creating INDEX "ad.study_iec_18_study_id"
pg_restore: creating INDEX "ad.study_iec_19_srce_sid"
pg_restore: creating INDEX "ad.study_iec_19_study_id"
pg_restore: creating INDEX "ad.study_iec_20_srce_sid"
pg_restore: creating INDEX "ad.study_iec_20_study_id"
pg_restore: creating INDEX "ad.study_iec_21_srce_sid"
pg_restore: creating INDEX "ad.study_iec_21_study_id"
pg_restore: creating INDEX "ad.study_iec_22_srce_sid"
pg_restore: creating INDEX "ad.study_iec_22_study_id"
pg_restore: creating INDEX "ad.study_iec_23_srce_sid"
pg_restore: creating INDEX "ad.study_iec_23_study_id"
pg_restore: creating INDEX "ad.study_iec_24_srce_sid"
pg_restore: creating INDEX "ad.study_iec_24_study_id"
pg_restore: creating INDEX "ad.study_iec_25_srce_sid"
pg_restore: creating INDEX "ad.study_iec_25_study_id"
pg_restore: creating INDEX "ad.study_iec_26_srce_sid"
pg_restore: creating INDEX "ad.study_iec_26_study_id"
pg_restore: creating INDEX "ad.study_iec_27_srce_sid"
pg_restore: creating INDEX "ad.study_iec_27_study_id"
pg_restore: creating INDEX "ad.study_iec_28_srce_sid"
pg_restore: creating INDEX "ad.study_iec_28_study_id"
pg_restore: creating INDEX "ad.study_iec_29_srce_sid"
pg_restore: creating INDEX "ad.study_iec_29_study_id"
pg_restore: creating INDEX "ad.study_iec_30_srce_sid"
pg_restore: creating INDEX "ad.study_iec_30_study_id"
pg_restore: creating INDEX "ad.study_iec_null_srce_sid"
pg_restore: creating INDEX "ad.study_iec_null_study_id"
pg_restore: creating INDEX "ad.study_iec_pre06_srce_sid"
pg_restore: creating INDEX "ad.study_iec_pre06_study_id"
Successfully completed.
Execution time: 124.79 seconds
```
