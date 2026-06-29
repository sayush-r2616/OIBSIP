# Task 3 - SQL Injection on DVWA

## What is SQL Injection?
SQL Injection is an attack where malicious SQL code is inserted into input
fields to manipulate the backend database.

## Setup
- DVWA installed via Docker
- Security level set to: Low
- URL: http://127.0.0.1

## Payloads Used
1. ' OR '1'='1  → Dumps all user records
2. ' OR '1'='1' -- → Same with comment to ignore rest of query

## Prevention
Always use prepared statements/parameterised queries. Never concatenate
user input directly into SQL strings.

## Ethics Note
This was performed only on a local DVWA instance. Never attempt this on
any real website.
