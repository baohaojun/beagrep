INCLUDES = $(MONO_CFLAGS)

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

libbeagrepglue_la_SOURCES = 		\
	$(BEAGREPD_GLUE_SOURCES)		\
	$(SPAWN_GLUE_SOURCES)		\
	$(SYSINFO_GLUE_SOURCES)		\
	$(EXTRA_GLUE_SOURCES)

libbeagrepglue_la_LDFLAGS     = -no-undefined -version-info 0:0:0

libbeagrepglue_la_LIBADD =	\
	-L$(mono_dir)/bin -lglib-2.0-0 \
	$(SYSINFO_GLUE_LIBADD)	\
	$(EXTRA_GLUE_LIBADD)

gluelibdir = $(pkglibdir)
gluelib_LTLIBRARIES = 		\
	libbeagrepglue.la
