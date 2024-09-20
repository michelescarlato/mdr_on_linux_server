```
Backing up an object on the server 'MDR_DB (51.103.39.152:5432)' from database 'cessda'
Running command:
/usr/bin/pg_dump --file "/home/michelescarlato/IdeaProjects/mdr_on_linux_server/db_backups/cessda/cessda_19_9_2024.backup" --host "51.103.39.152" --port "5432" --username "postgres" --no-password --format=c --blobs --verbose --schema "da" "cessda"
 Start time: Fri Sep 20 2024 12:36:12 GMT+0200 (Central European Summer Time)
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
pg_dump: dumping contents of table "da.identifiers"
Successfully completed.
```

```
Restoring backup on the server 'krang 172.22.68.113 (172.22.68.113:5432)'
Running command:
/usr/bin/pg_restore --host "172.22.68.113" --port "5432" --username "postgres" --no-password --dbname "postgres" --verbose "/home/michelescarlato/IdeaProjects/mdr_on_linux_server/db_backups/cessda/cessda_19_9_2024.backup"
 Start time: Fri Sep 20 2024 12:42:14 GMT+0200 (Central European Summer Time)
pg_restore: connecting to database for restore
pg_restore: creating SCHEMA "da"
pg_restore: creating TABLE "da.identifiers"
pg_restore: processing data for table "da.identifiers"
pg_restore: creating CONSTRAINT "da.identifiers identifiers_pkey"
Successfully completed.
Execution time: 87.25 seconds
```