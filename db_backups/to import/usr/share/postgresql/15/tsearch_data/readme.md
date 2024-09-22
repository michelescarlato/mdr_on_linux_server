while importing there were these errors:


```
pg_restore: error: could not execute query: ERROR: could not open stop-word file "/usr/share/postgresql/15/tsearch_data/mdr_english.stop": No such file or directory
Command was: CREATE TEXT SEARCH DICTIONARY core.mdr_english_stemmer (
TEMPLATE = pg_catalog.snowball,
language = 'english', stopwords = 'mdr_english' );
pg_restore: error: could not execute query: ERROR: text search dictionary "core.mdr_english_stemmer" does not exist
Command was: ALTER TEXT SEARCH DICTIONARY core.mdr_english_stemmer OWNER TO postgres;
pg_restore: creating TEXT SEARCH DICTIONARY "core.mdr_synonyms"
pg_restore: from TOC entry 2526; 3600 66773837 TEXT SEARCH DICTIONARY mdr_synonyms postgres
pg_restore: error: could not execute query: ERROR: could not open synonym file "/usr/share/postgresql/15/tsearch_data/mdr_synonyms.syn": No such file or directory
Command was: CREATE TEXT SEARCH DICTIONARY core.mdr_synonyms (
TEMPLATE = pg_catalog.synonym,
synonyms = 'mdr_synonyms' );
pg_restore: error: could not execute query: ERROR: text search dictionary "core.mdr_synonyms" does not exist
Command was: ALTER TEXT SEARCH DICTIONARY core.mdr_synonyms OWNER TO postgres;
pg_restore: creating TEXT SEARCH CONFIGURATION "core.mdr_english_config2"
pg_restore: from TOC entry 2557; 3602 66773835 TEXT SEARCH CONFIGURATION mdr_english_config2 postgres
pg_restore: error: could not execute query: ERROR: text search dictionary "core.mdr_synonyms" does not exist
```
