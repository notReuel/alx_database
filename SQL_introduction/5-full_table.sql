-- Script to print the full description of the table first_table in hbtn_0c_0 database

SELECT
  CONCAT('CREATE TABLE `', table_name, '` (\n',
         GROUP_CONCAT(
           CONCAT('  `', column_name, '` ', column_type,
                  IF(IS_NULLABLE = 'NO', ' NOT NULL', ''),
                  IF(COLUMN_DEFAULT IS NOT NULL, CONCAT(' DEFAULT ', QUOTE(COLUMN_DEFAULT)), ''),
                  IF(EXTRA = 'auto_increment', ' AUTO_INCREMENT', ''),
                  ',')
           SEPARATOR '\n'),
         IF(CHARACTER_SET_NAME IS NOT NULL, CONCAT(') ENGINE=InnoDB DEFAULT CHARSET=', CHARACTER_SET_NAME, ';'), ')')
       ) AS CreateTableStatement
FROM information_schema.columns
WHERE table_schema = 'hbtn_0c_0'
  AND table_name = 'first_table'
GROUP BY table_name;
