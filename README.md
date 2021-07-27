# generate_series for MySQL
procedure for generating random data for test.

### making the procedure
```
mysql% echo "create database Juni_test;" | mysql
mysql% cat Jgenerate_series.sql | mysql
```

### execute
```
CALL Jgenerate_series(${NUMBER});

(e.g. CALL Jgenerate_series(10);)
```

### data check
```
select * from Jgenerate_series_tbl;
```

