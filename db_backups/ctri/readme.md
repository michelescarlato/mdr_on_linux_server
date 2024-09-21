```
Backing up an object on the server 'PostgreSQL 15 (localhost:5432)' from database 'ctri'
Running command:
C:\Program Files\pgAdmin 4\v7\runtime\pg_dump.exe --file "F:\\MDR_DBBackups\\21_09_2024\\21_09_2024_ctri.backup" --host "localhost" --port "5432" --username "postgres" --no-password --verbose --format=c --blobs "ctri"
 Start time: Sat Sep 21 2024 18:08:43 GMT+0200 (Central European Summer Time)
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
pg_dump: dumping contents of table "ad.temp_org_names"
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
Execution time: 216.38 seconds
```
from Prod to Krang

```
Restoring backup on the server 'krang linux (leman73.homelinux.org:5432)'
Running command:
C:\Program Files\pgAdmin 4\v7\runtime\pg_restore.exe --host "leman73.homelinux.org" --port "5432" --username "postgres" --no-password --dbname "ctri" --verbose "F:\\MDR_DBBackups\\21_09_2024\\21_09_2024_ctri.backup"
 Start time: Sat Sep 21 2024 18:22:43 GMT+0200 (Central European Summer Time)
pg_restore: connecting to database for restore
pg_restore: creating SCHEMA "ad"
pg_restore: creating SCHEMA "context_ctx"
pg_restore: creating SCHEMA "context_lup"
pg_restore: creating SCHEMA "mn"
pg_restore: creating SCHEMA "sd"
pg_restore: creating SCHEMA "te"
pg_restore: creating EXTENSION "postgres_fdw"
pg_restore: creating COMMENT "EXTENSION postgres_fdw"
pg_restore: creating SERVER "context"
pg_restore: creating USER MAPPING "USER MAPPING postgres SERVER context"
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
pg_restore: creating TABLE "ad.temp_org_names"
pg_restore: creating FOREIGN TABLE "context_ctx.cities"
pg_restore: creating FOREIGN TABLE "context_ctx.city_names"
pg_restore: creating FOREIGN TABLE "context_ctx.countries"
pg_restore: creating FOREIGN TABLE "context_ctx.country_names"
pg_restore: creating FOREIGN TABLE "context_ctx.data_sources"
pg_restore: creating FOREIGN TABLE "context_ctx.dups_icd11"
pg_restore: creating FOREIGN TABLE "context_ctx.geog_scope_membership"
pg_restore: creating FOREIGN TABLE "context_ctx.geog_scopes"
pg_restore: creating FOREIGN TABLE "context_ctx.icd11_codes"
pg_restore: creating FOREIGN TABLE "context_ctx.icd_codes_lookup"
pg_restore: creating FOREIGN TABLE "context_ctx.icd_terms_lookup"
pg_restore: creating FOREIGN TABLE "context_ctx.mesh_codes"
pg_restore: creating FOREIGN TABLE "context_ctx.mesh_lookup"
pg_restore: creating FOREIGN TABLE "context_ctx.nlm_databanks"
pg_restore: creating FOREIGN TABLE "context_ctx.org_attributes"
pg_restore: creating FOREIGN TABLE "context_ctx.org_locations"
pg_restore: creating FOREIGN TABLE "context_ctx.org_names"
pg_restore: creating FOREIGN TABLE "context_ctx.org_relationships"
pg_restore: creating FOREIGN TABLE "context_ctx.org_type_membership"
pg_restore: creating FOREIGN TABLE "context_ctx.organisations"
pg_restore: creating FOREIGN TABLE "context_ctx.orgnames_to_match"
pg_restore: creating FOREIGN TABLE "context_ctx.orgs_to_search"
pg_restore: creating FOREIGN TABLE "context_ctx.people"
pg_restore: creating FOREIGN TABLE "context_ctx.people_links"
pg_restore: creating FOREIGN TABLE "context_ctx.people_roles"
pg_restore: creating FOREIGN TABLE "context_ctx.periodicals"
pg_restore: creating FOREIGN TABLE "context_ctx.sci_dbs"
pg_restore: creating FOREIGN TABLE "context_ctx.to_match_cities"
pg_restore: creating FOREIGN TABLE "context_ctx.to_match_conditions"
pg_restore: creating FOREIGN TABLE "context_ctx.to_match_countries"
pg_restore: creating FOREIGN TABLE "context_ctx.to_match_orgs"
pg_restore: creating FOREIGN TABLE "context_ctx.to_match_topics"
pg_restore: creating FOREIGN TABLE "context_lup.contribution_types"
pg_restore: creating FOREIGN TABLE "context_lup.dataset_consent_types"
pg_restore: creating FOREIGN TABLE "context_lup.dataset_deidentification_levels"
pg_restore: creating FOREIGN TABLE "context_lup.dataset_recordkey_types"
pg_restore: creating FOREIGN TABLE "context_lup.date_types"
pg_restore: creating FOREIGN TABLE "context_lup.description_types"
pg_restore: creating FOREIGN TABLE "context_lup.doi_status_types"
pg_restore: creating FOREIGN TABLE "context_lup.gender_eligibility_types"
pg_restore: creating FOREIGN TABLE "context_lup.identifier_types"
pg_restore: creating FOREIGN TABLE "context_lup.iec_level_types"
pg_restore: creating FOREIGN TABLE "context_lup.language_codes"
pg_restore: creating FOREIGN TABLE "context_lup.language_scripts"
pg_restore: creating FOREIGN TABLE "context_lup.language_usage_types"
pg_restore: creating FOREIGN TABLE "context_lup.object_access_types"
pg_restore: creating FOREIGN TABLE "context_lup.object_classes"
pg_restore: creating FOREIGN TABLE "context_lup.object_filter_types"
pg_restore: creating FOREIGN TABLE "context_lup.object_relationship_types"
pg_restore: creating FOREIGN TABLE "context_lup.object_types"
pg_restore: creating FOREIGN TABLE "context_lup.org_attribute_types"
pg_restore: creating FOREIGN TABLE "context_lup.org_classes"
pg_restore: creating FOREIGN TABLE "context_lup.org_name_qualifier_types"
pg_restore: creating FOREIGN TABLE "context_lup.org_relationship_types"
pg_restore: creating FOREIGN TABLE "context_lup.org_types"
pg_restore: creating FOREIGN TABLE "context_lup.resource_types"
pg_restore: creating FOREIGN TABLE "context_lup.size_units"
pg_restore: creating FOREIGN TABLE "context_lup.study_feature_categories"
pg_restore: creating FOREIGN TABLE "context_lup.study_feature_types"
pg_restore: creating FOREIGN TABLE "context_lup.study_relationship_types"
pg_restore: creating FOREIGN TABLE "context_lup.study_statuses"
pg_restore: creating FOREIGN TABLE "context_lup.study_types"
pg_restore: creating FOREIGN TABLE "context_lup.time_units"
pg_restore: creating FOREIGN TABLE "context_lup.title_types"
pg_restore: creating FOREIGN TABLE "context_lup.topic_types"
pg_restore: creating FOREIGN TABLE "context_lup.topic_vocabularies"
pg_restore: creating FOREIGN TABLE "context_lup.trial_registries"
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
pg_restore: processing data for table "ad.object_titles"
pg_restore: processing data for table "ad.studies"
pg_restore: processing data for table "ad.study_conditions"
pg_restore: processing data for table "ad.study_countries"
pg_restore: processing data for table "ad.study_features"
pg_restore: processing data for table "ad.study_identifiers"
pg_restore: processing data for table "ad.study_iec_13to19"
pg_restore: processing data for table "ad.study_iec_20on"
pg_restore: processing data for table "ad.study_iec_upto12"
pg_restore: processing data for table "ad.study_organisations"
pg_restore: processing data for table "ad.study_people"
pg_restore: processing data for table "ad.study_titles"
pg_restore: processing data for table "ad.temp_city_names"
pg_restore: processing data for table "ad.temp_country_names"
pg_restore: processing data for table "ad.temp_mult_conds"
pg_restore: processing data for table "ad.temp_org_names"
pg_restore: processing data for table "mn.source_data"
pg_restore: processing data for table "sd.data_objects"
pg_restore: processing data for table "sd.object_dates"
pg_restore: processing data for table "sd.object_instances"
pg_restore: processing data for table "sd.object_titles"
pg_restore: processing data for table "sd.studies"
pg_restore: processing data for table "sd.study_conditions"
pg_restore: processing data for table "sd.study_countries"
pg_restore: processing data for table "sd.study_features"
pg_restore: processing data for table "sd.study_identifiers"
pg_restore: processing data for table "sd.study_iec_13to19"
pg_restore: processing data for table "sd.study_iec_20on"
pg_restore: processing data for table "sd.study_iec_upto12"
pg_restore: processing data for table "sd.study_organisations"
pg_restore: processing data for table "sd.study_people"
pg_restore: processing data for table "sd.study_titles"
pg_restore: processing data for table "te.data_objects"
pg_restore: processing data for table "te.object_dates"
pg_restore: processing data for table "te.object_instances"
pg_restore: processing data for table "te.object_titles"
pg_restore: processing data for table "te.studies"
pg_restore: processing data for table "te.study_conditions"
pg_restore: processing data for table "te.study_countries"
pg_restore: processing data for table "te.study_features"
pg_restore: processing data for table "te.study_identifiers"
pg_restore: processing data for table "te.study_iec_13to19"
pg_restore: processing data for table "te.study_iec_20on"
pg_restore: processing data for table "te.study_iec_upto12"
pg_restore: processing data for table "te.study_organisations"
pg_restore: processing data for table "te.study_people"
pg_restore: processing data for table "te.study_titles"
pg_restore: executing SEQUENCE SET data_objects_id_seq
pg_restore: executing SEQUENCE SET object_dates_id_seq
pg_restore: executing SEQUENCE SET object_instances_id_seq
pg_restore: executing SEQUENCE SET object_titles_id_seq
pg_restore: executing SEQUENCE SET studies_id_seq
pg_restore: executing SEQUENCE SET study_conditions_id_seq
pg_restore: executing SEQUENCE SET study_countries_id_seq
pg_restore: executing SEQUENCE SET study_features_id_seq
pg_restore: executing SEQUENCE SET study_identifiers_id_seq
pg_restore: executing SEQUENCE SET study_iec_13to19_id_seq
pg_restore: executing SEQUENCE SET study_iec_20on_id_seq
pg_restore: executing SEQUENCE SET study_iec_upto12_id_seq
pg_restore: executing SEQUENCE SET study_organisations_id_seq
pg_restore: executing SEQUENCE SET study_people_id_seq
pg_restore: executing SEQUENCE SET study_titles_id_seq
pg_restore: executing SEQUENCE SET source_data_id_seq
pg_restore: executing SEQUENCE SET data_objects_id_seq
pg_restore: executing SEQUENCE SET object_dates_id_seq
pg_restore: executing SEQUENCE SET object_instances_id_seq
pg_restore: executing SEQUENCE SET object_titles_id_seq
pg_restore: executing SEQUENCE SET studies_id_seq
pg_restore: executing SEQUENCE SET study_conditions_id_seq
pg_restore: executing SEQUENCE SET study_countries_id_seq
pg_restore: executing SEQUENCE SET study_features_id_seq
pg_restore: executing SEQUENCE SET study_identifiers_id_seq
pg_restore: executing SEQUENCE SET study_iec_13to19_id_seq
pg_restore: executing SEQUENCE SET study_iec_20on_id_seq
pg_restore: executing SEQUENCE SET study_iec_upto12_id_seq
pg_restore: executing SEQUENCE SET study_organisations_id_seq
pg_restore: executing SEQUENCE SET study_people_id_seq
pg_restore: executing SEQUENCE SET study_titles_id_seq
pg_restore: executing SEQUENCE SET data_objects_id_seq
pg_restore: executing SEQUENCE SET object_dates_id_seq
pg_restore: executing SEQUENCE SET object_instances_id_seq
pg_restore: executing SEQUENCE SET object_titles_id_seq
pg_restore: executing SEQUENCE SET studies_id_seq
pg_restore: executing SEQUENCE SET study_conditions_id_seq
pg_restore: executing SEQUENCE SET study_countries_id_seq
pg_restore: executing SEQUENCE SET study_features_id_seq
pg_restore: executing SEQUENCE SET study_identifiers_id_seq
pg_restore: executing SEQUENCE SET study_iec_13to19_id_seq
pg_restore: executing SEQUENCE SET study_iec_20on_id_seq
pg_restore: executing SEQUENCE SET study_iec_upto12_id_seq
pg_restore: executing SEQUENCE SET study_organisations_id_seq
pg_restore: executing SEQUENCE SET study_people_id_seq
pg_restore: executing SEQUENCE SET study_titles_id_seq
pg_restore: creating CONSTRAINT "ad.data_objects data_objects_new_pkey1"
pg_restore: creating CONSTRAINT "ad.object_dates object_dates_new_pkey1"
pg_restore: creating CONSTRAINT "ad.object_instances object_instances_new_pkey1"
pg_restore: creating CONSTRAINT "ad.object_titles object_titles_pkey"
pg_restore: creating CONSTRAINT "ad.studies studies_new_pkey1"
pg_restore: creating CONSTRAINT "ad.study_conditions study_conditions_new_pkey"
pg_restore: creating CONSTRAINT "ad.study_countries study_countries_new_pkey1"
pg_restore: creating CONSTRAINT "ad.study_features study_features_new_pkey1"
pg_restore: creating CONSTRAINT "ad.study_identifiers study_identifiers_new_pkey1"
pg_restore: creating CONSTRAINT "ad.study_iec_13to19 study_iec_13to19_pkey"
pg_restore: creating CONSTRAINT "ad.study_iec_20on study_iec_20on_new_pkey1"
pg_restore: creating CONSTRAINT "ad.study_iec_upto12 study_iec_upto12_pkey"
pg_restore: creating CONSTRAINT "ad.study_organisations study_organisations_new_pkey1"
pg_restore: creating CONSTRAINT "ad.study_people study_people_new_pkey1"
pg_restore: creating CONSTRAINT "ad.study_titles study_titles_new_pkey1"
pg_restore: creating CONSTRAINT "mn.source_data source_data_pkey"
pg_restore: creating CONSTRAINT "sd.data_objects data_objects_pkey"
pg_restore: creating CONSTRAINT "sd.object_dates object_dates_pkey"
pg_restore: creating CONSTRAINT "sd.object_instances object_instances_pkey"
pg_restore: creating CONSTRAINT "sd.object_titles object_titles_pkey"
pg_restore: creating CONSTRAINT "sd.studies studies_pkey"
pg_restore: creating CONSTRAINT "sd.study_conditions study_conditions_pkey"
pg_restore: creating CONSTRAINT "sd.study_countries study_countries_pkey"
pg_restore: creating CONSTRAINT "sd.study_features study_features_pkey"
pg_restore: creating CONSTRAINT "sd.study_identifiers study_identifiers_pkey"
pg_restore: creating CONSTRAINT "sd.study_iec_13to19 study_iec_13to19_pkey"
pg_restore: creating CONSTRAINT "sd.study_iec_20on study_iec_20on_pkey"
pg_restore: creating CONSTRAINT "sd.study_iec_upto12 study_iec_upto12_pkey"
pg_restore: creating CONSTRAINT "sd.study_organisations study_organisations_pkey"
pg_restore: creating CONSTRAINT "sd.study_people study_people_pkey"
pg_restore: creating CONSTRAINT "sd.study_titles study_titles_pkey"
pg_restore: creating CONSTRAINT "te.data_objects data_objects_pkey"
pg_restore: creating CONSTRAINT "te.object_dates object_dates_pkey"
pg_restore: creating CONSTRAINT "te.object_instances object_instances_pkey"
pg_restore: creating CONSTRAINT "te.object_titles object_titles_pkey"
pg_restore: creating CONSTRAINT "te.studies studies_pkey"
pg_restore: creating CONSTRAINT "te.study_conditions study_conditions_pkey"
pg_restore: creating CONSTRAINT "te.study_countries study_countries_pkey"
pg_restore: creating CONSTRAINT "te.study_features study_features_pkey"
pg_restore: creating CONSTRAINT "te.study_identifiers study_identifiers_pkey"
pg_restore: creating CONSTRAINT "te.study_iec_13to19 study_iec_13to19_pkey"
pg_restore: creating CONSTRAINT "te.study_iec_20on study_iec_20on_pkey"
pg_restore: creating CONSTRAINT "te.study_iec_upto12 study_iec_upto12_pkey"
pg_restore: creating CONSTRAINT "te.study_organisations study_organisations_pkey"
pg_restore: creating CONSTRAINT "te.study_people study_people_pkey"
pg_restore: creating CONSTRAINT "te.study_titles study_titles_pkey"
pg_restore: creating INDEX "ad.data_objects_oid"
pg_restore: creating INDEX "ad.data_objects_sid"
pg_restore: creating INDEX "ad.object_dates_oid"
pg_restore: creating INDEX "ad.object_instances_oid"
pg_restore: creating INDEX "ad.object_titles_oid"
pg_restore: creating INDEX "ad.studies_sid"
pg_restore: creating INDEX "ad.study_conditions_sid"
pg_restore: creating INDEX "ad.study_countries_sid"
pg_restore: creating INDEX "ad.study_features_sid"
pg_restore: creating INDEX "ad.study_identifiers_sid"
pg_restore: creating INDEX "ad.study_iec_13to19_sid"
pg_restore: creating INDEX "ad.study_iec_20on_sid"
pg_restore: creating INDEX "ad.study_iec_upto12_sid"
pg_restore: creating INDEX "ad.study_organisations_sid"
pg_restore: creating INDEX "ad.study_people_sid"
pg_restore: creating INDEX "ad.study_titles_sid"
pg_restore: creating INDEX "mn.source_sd_sid"
pg_restore: creating INDEX "sd._study_people_sd_sid"
pg_restore: creating INDEX "sd.data_objects_sd_oid"
pg_restore: creating INDEX "sd.data_objects_sd_sid"
pg_restore: creating INDEX "sd.object_dates_sd_oid"
pg_restore: creating INDEX "sd.object_instances_sd_oid"
pg_restore: creating INDEX "sd.object_titles_sd_oid"
pg_restore: creating INDEX "sd.studies_sid"
pg_restore: creating INDEX "sd.study_conditions_sd_sid"
pg_restore: creating INDEX "sd.study_countries_sd_sid"
pg_restore: creating INDEX "sd.study_features_sd_sid"
pg_restore: creating INDEX "sd.study_identifiers_sd_sid"
pg_restore: creating INDEX "sd.study_iec_13to19_sid"
pg_restore: creating INDEX "sd.study_iec_20on_sid"
pg_restore: creating INDEX "sd.study_iec_upto12_sid"
pg_restore: creating INDEX "sd.study_organisations_sd_sid"
pg_restore: creating INDEX "sd.study_titles_sd_sid"
pg_restore: creating INDEX "te.data_objects_oid"
pg_restore: creating INDEX "te.data_objects_sid"
pg_restore: creating INDEX "te.object_dates_oid"
pg_restore: creating INDEX "te.object_instances_oid"
pg_restore: creating INDEX "te.object_titles_oid"
pg_restore: creating INDEX "te.studies_sid"
pg_restore: creating INDEX "te.study_conditions_sid"
pg_restore: creating INDEX "te.study_countries_sid"
pg_restore: creating INDEX "te.study_features_sid"
pg_restore: creating INDEX "te.study_identifiers_sid"
pg_restore: creating INDEX "te.study_iec_13to19_sid"
pg_restore: creating INDEX "te.study_iec_20on_sid"
pg_restore: creating INDEX "te.study_iec_upto12_sid"
pg_restore: creating INDEX "te.study_organisations_sid"
pg_restore: creating INDEX "te.study_people_sid"
pg_restore: creating INDEX "te.study_titles_sid"
Successfully completed.
Execution time: 211.47 second
```
