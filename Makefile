# postgresql-logfdw/Makefile

MODULES = test_java

EXTENSION = test_java
DATA = test_java--1.0.sql
PGFILEDESC = "test_java - example on how to use graalvm native to call java from postgresql"
OBJS=test_java.o
SHLIB_LINK=-ljavaclasses
REGRESS = test_java


# Disabled because these tests require extra parameters to be set
# (see log_fdw.conf), which some installcheck users do not have
# (e.g. buildfarm clients).
NO_INSTALLCHECK = 1

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/postgresql-logfdw
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
