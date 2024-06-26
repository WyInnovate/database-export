SELECT
    COLNAME AS COLUMN_NAME,
    TYPESCHEMA,
    TYPENAME AS DATA_TYPE,
    LENGTH AS DATA_LENGTH,
    SCALE AS DATA_SCALE,
    DEFAULT AS DATA_DEFAULT,
    NULLS AS NULLABLE,
    REMARKS AS COMMENTS
FROM
    SYSCAT.COLUMNS c
WHERE
    1 = 1
  AND TABSCHEMA = %s
  AND TABNAME = '%s'
ORDER BY
    COLNO