INCLUDES = $(MONO_CFLAGS)

EXTRA_GLUE_SOURCES =
EXTRA_GLUE_LIBADD =

BEAGLED_GLUE_SOURCES = 

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

libbeagleglue_la_SOURCES = 		\
	$(BEAGLED_GLUE_SOURCES)		\
	$(SPAWN_GLUE_SOURCES)		\
	$(SYSINFO_GLUE_SOURCES)		\
	$(EXTRA_GLUE_SOURCES)

libbeagleglue_la_LDFLAGS     = -no-undefined -version-info 0:0:0

libbeagleglue_la_LIBADD =	\
	-L/c/PROGRA~1/MONO-2~1.6/bin -lglib-2.0-0 -lintl \
	$(SYSINFO_GLUE_LIBADD)	\
	$(EXTRA_GLUE_LIBADD) 

gluelibdir = $(pkglibdir)
gluelib_LTLIBRARIES = 		\
	libbeagleglue.la


COND_SOURCES = 			\
	inotify-glue.c

EXTRA_DIST =			\
	$(COND_SOURCES)


