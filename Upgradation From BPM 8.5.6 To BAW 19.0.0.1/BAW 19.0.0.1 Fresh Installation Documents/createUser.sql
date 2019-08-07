-- BEGIN COPYRIGHT
-- *************************************************************************
-- 
--  Licensed Materials - Property of IBM
--  5725-C94, 5725-C95, 5725-C96
--  (C) Copyright IBM Corporation 2013, 2016. All Rights Reserved.
--  US Government Users Restricted Rights- Use, duplication or disclosure
--  restricted by GSA ADP Schedule Contract with IBM Corp.
-- 
-- *************************************************************************
-- END COPYRIGHT

-- alter session
alter session set "_ORACLE_SCRIPT" = true;
commit;

-- create a new user
CREATE USER bpmuser IDENTIFIED BY sarasu10

-- allow the user to connect to the database
grant connect to bpmuser;

-- provide quota on all tablespaces with BPM tables
grant unlimited tablespace to bpmuser;

-- grant privileges to create database objects:
grant resource to bpmuser;
grant create view to bpmuser;

-- grant access rights to resolve lock issues
grant execute on dbms_lock to bpmuser;

-- grant access rights to resolve XA related issues:
grant select on pending_trans$ to bpmuser;
grant select on dba_2pc_pending to bpmuser;
grant select on dba_pending_transactions to bpmuser;
-- If using Oracle 10.2.0.3 or lower JDBC driver, un-comment the following statement:
-- grant execute on dbms_system to bpmuser; 
-- If not using Oracle 10.2.0.4 or higher JDBC driver, comment the following statement:
grant execute on dbms_xa to bpmuser;

--

-- alter session
alter session set "_ORACLE_SCRIPT" = true;
commit;

-- create a new user
CREATE USER cmnuser IDENTIFIED BY sarasu10

-- allow the user to connect to the database
grant connect to cmnuser;

-- provide quota on all tablespaces with BPM tables
grant unlimited tablespace to cmnuser;

-- grant privileges to create database objects:
grant resource to cmnuser;
grant create view to cmnuser;

-- grant access rights to resolve lock issues
grant execute on dbms_lock to cmnuser;

-- grant access rights to resolve XA related issues:
grant select on pending_trans$ to cmnuser;
grant select on dba_2pc_pending to cmnuser;
grant select on dba_pending_transactions to cmnuser;
-- If using Oracle 10.2.0.3 or lower JDBC driver, un-comment the following statement:
-- grant execute on dbms_system to cmnuser; 
-- If not using Oracle 10.2.0.4 or higher JDBC driver, comment the following statement:
grant execute on dbms_xa to cmnuser;

--

-- alter session
alter session set "_ORACLE_SCRIPT" = true;
commit;

-- create a new user
CREATE USER pdwuser IDENTIFIED BY sarasu10

-- allow the user to connect to the database
grant connect to pdwuser;

-- provide quota on all tablespaces with BPM tables
grant unlimited tablespace to pdwuser;

-- grant privileges to create database objects:
grant resource to pdwuser;
grant create view to pdwuser;

-- grant access rights to resolve lock issues
grant execute on dbms_lock to pdwuser;

-- grant access rights to resolve XA related issues:
grant select on pending_trans$ to pdwuser;
grant select on dba_2pc_pending to pdwuser;
grant select on dba_pending_transactions to pdwuser;
-- If using Oracle 10.2.0.3 or lower JDBC driver, un-comment the following statement:
-- grant execute on dbms_system to pdwuser; 
-- If not using Oracle 10.2.0.4 or higher JDBC driver, comment the following statement:
grant execute on dbms_xa to pdwuser;

--

-- alter session
alter session set "_ORACLE_SCRIPT" = true;
commit;

-- create a new user
CREATE USER dosuser IDENTIFIED BY sarasu10

-- allow the user to connect to the database
grant connect to dosuser;

-- provide quota on all tablespaces with BPM tables
grant unlimited tablespace to dosuser;

-- grant privileges to create database objects:
grant resource to dosuser;
grant create view to dosuser;

-- grant access rights to resolve lock issues
grant execute on dbms_lock to dosuser;

-- grant access rights to resolve XA related issues:
grant select on pending_trans$ to dosuser;
grant select on dba_2pc_pending to dosuser;
grant select on dba_pending_transactions to dosuser;
-- If using Oracle 10.2.0.3 or lower JDBC driver, un-comment the following statement:
-- grant execute on dbms_system to dosuser; 
-- If not using Oracle 10.2.0.4 or higher JDBC driver, comment the following statement:
grant execute on dbms_xa to dosuser;

--

-- alter session
alter session set "_ORACLE_SCRIPT" = true;
commit;

-- create a new user
CREATE USER tosuser IDENTIFIED BY sarasu10

-- allow the user to connect to the database
grant connect to tosuser;

-- provide quota on all tablespaces with BPM tables
grant unlimited tablespace to tosuser;

-- grant privileges to create database objects:
grant resource to tosuser;
grant create view to tosuser;

-- grant access rights to resolve lock issues
grant execute on dbms_lock to tosuser;

-- grant access rights to resolve XA related issues:
grant select on pending_trans$ to tosuser;
grant select on dba_2pc_pending to tosuser;
grant select on dba_pending_transactions to tosuser;
-- If using Oracle 10.2.0.3 or lower JDBC driver, un-comment the following statement:
-- grant execute on dbms_system to tosuser; 
-- If not using Oracle 10.2.0.4 or higher JDBC driver, comment the following statement:
grant execute on dbms_xa to tosuser;

--

-- alter session
alter session set "_ORACLE_SCRIPT" = true;
commit;

-- create a new user
CREATE USER icnuser IDENTIFIED BY sarasu10

-- allow the user to connect to the database
grant connect to icnuser;

-- provide quota on all tablespaces with BPM tables
grant unlimited tablespace to icnuser;

-- grant privileges to create database objects:
grant resource to icnuser;
grant create view to icnuser;

-- grant access rights to resolve lock issues
grant execute on dbms_lock to icnuser;

-- grant access rights to resolve XA related issues:
grant select on pending_trans$ to icnuser;
grant select on dba_2pc_pending to icnuser;
grant select on dba_pending_transactions to icnuser;
-- If using Oracle 10.2.0.3 or lower JDBC driver, un-comment the following statement:
-- grant execute on dbms_system to icnuser; 
-- If not using Oracle 10.2.0.4 or higher JDBC driver, comment the following statement:
grant execute on dbms_xa to icnuser;
