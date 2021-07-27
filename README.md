# generate_series for MySQL
procedure for generating random data for test.

### making the procedure
```
mysql% echo "create database Juni_test;" | mysql
mysql% cat Jgenerate_series_procedure.sql | mysql
```

### execute
```
CALL Jgenerate_series(${NUMBER});

(e.g. CALL Jgenerate_series(10);)
```

### drop procedure
```
drop procedure Jgenerate_series;
```

### data check
```
select * from Jgenerate_series_tbl;
```

### sample data
```
mysql> select * from generate_series_tbl;
+------+------------+---------+-------------------------+----------------------------------+
| id   | date       | rnd_num | rnd_float               | rnd_str                          |
+------+------------+---------+-------------------------+----------------------------------+
|    0 | 1891-10-27 |    2518 |      0.8372889122341656 | cfcd208495d565ef66e7dff9f98764da |
|    1 | 1903-07-14 |    6437 |      0.9250081646489056 | c4ca4238a0b923820dcc509a6f75849b |
|    2 | 1831-07-18 |    6952 |     0.39385413973951167 | c81e728d9d4c2f636f067f89cc14862c |
|    3 | 1779-08-16 |    2368 |      0.5331123317900228 | eccbc87e4b5ce2fe28308fd9f2a7baf3 |
|    4 | 1760-01-29 |    1760 |    0.014926368384553463 | a87ff679a2f3e71d9181a67b7542122c |
|    5 | 1871-12-04 |    6879 |      0.8000781105831993 | e4da3b7fbbce2345d7772b0674a318d5 |
|    6 | 1765-02-22 |    2826 |      0.6032384984225393 | 1679091c5a880faf6fb5e6087eb1b2dc |
|    7 | 1975-06-12 |     325 |      0.6569724862063048 | 8f14e45fceea167a5a36dedd4bea2543 |
|    8 | 1970-03-23 |    9666 |     0.27036103724535654 | c9f0f895fb98ab9159f51fd0297e236d |
|    9 | 1897-10-13 |    4494 |      0.8906274502078327 | 45c48cce2e2d7fbdea1afc51c7c6ad26 |
|   10 | 1992-10-24 |    8531 |      0.9504496091515288 | d3d9446802a44259755d38e6d163e820 |
```
