INCLUDES = @MONO_CFLAGS@ @GLIB_CFLAGS@

EXTRA_GLUE_SOURCES =
EXTRA_GLUE_LIBADD =

BEAGREPD_GLUE_SOURCES =

if ENABLE_INOTIFY
EXTRA_GLUE_SOURCES +=		\
	inotify-glue.c
endif

SPAWN_GLUE_SOURCES =		\
	spawn-glue.c

SYSINFO_GLUE_SOURCES =		\
	thread-glue.c

SYSINFO_GLUE_LIBADD = $(MONO_LIBS)

if ENABLE_LIBXSS
SYSINFO_GLUE_LIBADD += $(SYSTEMINFO_GLUE_X_LIBS)
endif

libbeagrepglue_la_SOURCES = 		\
	$(BEAGREPD_GLUE_SOURCES)		\
	$(SPAWN_GLUE_SOURCES)		\
	$(SYSINFO_GLUE_SOURCES)		\
	$(EXTRA_GLUE_SOURCES)

libbeagrepglue_la_LDFLAGS     = -no-undefined -version-info 0:0:0

libbeagrepglue_la_LIBADD =	\
	-L/c/PROGRA~1/MONO-2~1.6/bin -lglib-2.0-0 \
	$(SYSINFO_GLUE_LIBADD)	\
	$(EXTRA_GLUE_LIBADD)

gluelibdir = $(pkglibdir)
gluelib_LTLIBRARIES = 		\
	libbeagrepglue.la


COND_SOURCES = 			\
	inotify-glue.c

EXTRA_DIST =			\
	$(COND_SOURCES)
