-- @block get  
select top 100 * from  "RIZ_MST_DB_SYNCH"."REP_S4_AFIH" order by AUFNR DESC

-- @block get  
select * from  procedures where SCHEMA_NAME='RIZ_MST_DB_SYNCH'

-- @block call stp
CALL "RIZ_MST_DB_SYNCH"."S4V.START_REPLICATION"()

-- @block call stp
SELECT * FROM TABLES ORDER BY SCHEMA_NAME