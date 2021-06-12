--Postgres
SELECT * FROM information_schema.tables WHERE table_schema = 'public';
--Postgres
SELECT table_catalog,table_name FROM information_schema.tables WHERE table_schema = 'public';
SELECT column_name FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'some_table';


--Redshift
SELECT tablename,tablename+'.'+column FROM pg_table_def WHERE schemaname = 'public' order by tablename;

SELECT distinct tablename FROM pg_table_def WHERE schemaname = 'public' order by 1;

select *
from information_schema.tables t 
where table_schema not in ('information_schema', 'pg_catalog')
order by 3;

select table_name,
       column_name,
       table_name+'.'+
       column_name
from information_schema.columns
where 1=1
--table_schema not in ('information_schema', 'pg_catalog')
order by 3;