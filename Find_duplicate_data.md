

# Find duplicate data

user_table

| id   | name     |
| ---- | -------- |
| 1    | Amy      |
| 2    | Bella    |
| 3    | Amy      |
| 4    | Michelle |

## Solution 1

1. create additional table, group name

   ```
   select name, count(name) as number
   from user_talbe
   group by name;
   ```

additional_table:

| name     | number |
| -------- | ------ |
| Amy      | 2      |
| Bella    | 1      |
| Michelle | 1      |

2. select number bigger than 1

```
select name form additional_tale
where number>1;
```

3. based on step1 and 2, generate nested selection

   ```sql
   select name from
   (
    select name, count(name) as number
    from user_tale
    group by name
   ) as additional_talbe
   where number > 1;
   ```

   

## Solution 2

```sql
select name
from user_table
group by name
having count(name) > 1;
```



### Future work

For finding n duplicate data

```sql
select column_name
from table_name
group by column_name
having count(column_name) > n;
```

