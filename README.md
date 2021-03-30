# Intro to SQL - Commands Reference

## Table Commands

Create a Table:
```SQL
CREATE TABLE cheeses (id INTEGER PRIMARY KEY, smelly INTEGER, name TEXT);
```

SQLite accepts the following value types: Integer, real, text, blob, null.

Add a Column to a Table:
```SQL
ALTER TABLE cheeses ADD COLUMN age INTEGER;
```

Delete a table:

```SQL
DROP TABLE cheeses;
```

## CRUD Commands

Create
  ```SQL
    -- INSERT INTO [tableName] (attr1, attr2) VALUES (value1, value2);
    INSERT INTO states (name, population) VALUES (“New York”, 19);
  ```
Never add an ID when inserting!

Read
  ```SQL
  --  SELECT [what we want to select] FROM [tableName] WHERE attr [conditional] "attr_value";
  SELECT * FROM states WHERE name = "New York";
 ```
Update
```SQL
  -- UPDATE [tableName] SET [columnName] = [new value] WHERE [columnName] = [value];
  UPDATE states SET population = 20 WHERE name = “New York”;
```
Delete
```SQL
  -- DELETE FROM [tableName] WHERE [columnName] = [value];
  DELETE FROM states WHERE name = “New York”;
```
