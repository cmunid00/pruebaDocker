create database christian @
connect to christian user christian using christian @
-- connect as db2inst1
connect to christian @
-- force SYSTOOLS schema creation
BEGIN
  DECLARE tmp INT;
  CALL SYSPROC.DB2LK_GENERATE_DDL('-e -t sysibm.sysdummy1', tmp);
END @
GRANT DATAACCESS ON DATABASE TO USER christian @
CALL SYSPROC.SYSINSTALLOBJECTS('EXPLAIN', 'C', 
        CAST (NULL AS VARCHAR(128)), CAST (NULL AS VARCHAR(128))) @
