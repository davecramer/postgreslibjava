/* testnative/test_java--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION test_java" to load this file. \quit


CREATE FUNCTION add(int, int)
RETURNS int
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT ;

CREATE FUNCTION subtract(int, int)
RETURNS int
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;