# Snowflake SQL

## Snowflake data type

| Category                   | Type                                        | Notes                                                        |
| -------------------------- | ------------------------------------------- | ------------------------------------------------------------ |
| Numeric Data Type          | number                                      | default precision and scale are (38,0)                       |
|                            | decimal                                     | synonymous with number                                       |
|                            | numeric                                     | synonymous with number                                       |
|                            | init, integer, bigint, smallint(around 100) | synonymous with number except precision  and scale cannot be specified |
|                            | float, float4, float8[1]                    |                                                              |
|                            | double[1]                                   | synonymous with float                                        |
|                            | double precision[1]                         | synonymous with float                                        |
|                            | real[1]                                     | synonymous with float                                        |
| string & binary data types | varchar                                     | default(and maximum) is 16,777,216 bytes(16mb). (Teradata version 16:  1mb/row ) |
|                            | char(static), character                     | synonymous with varchar except default length is varchar(1)  |
|                            | string                                      | synonymous with varchar                                      |
|                            | text                                        | synonymous with varchar                                      |
|                            | binary                                      |                                                              |
|                            | varbinary                                   | synonymous with binary                                       |

Decimal Type

| Type         | m range                                                      | D range                                                      | example 1             | example 2                 | example 3(wrong)                |
| ------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | --------------------- | ------------------------- | ------------------------------- |
| decimal(m,d) | M is the maximum number of digits(the precision). It has a range of 1 to 38 | D is the number of digits to the right of the decimal point(the scale). It has a range of 0 to 37 and must be no larger than M. | decimal(6,4): 99.9999 | decimal(10,3):9999999.999 | Decimal(3,7): invalid data type |

![b0aaf8e99cbf1e9a9c85a279139a478](C:\Users\qlt11\AppData\Local\Temp\WeChat Files\b0aaf8e99cbf1e9a9c85a279139a478.png)



## Major join types

### Selection

