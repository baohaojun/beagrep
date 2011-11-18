INCLUDES = $(MONO_CFLAGS)

EXTRA_GLUE_SOURCES =
EXTRA_GLUE_LIBADD =

BEAGLED_GLUE_SOURCES =		\
	beagled-utils.c

if ENABLE_INOTIFY
EXTRA_GLUE_SOURCES +=		\
	inotify-glue.c
endif

SPAWN_GLUE_SOURCES =		\
	spawn-glue.c

SCHEDULER_GLUE_SOURCES =	\
	scheduler-glue.c

SYSINFO_GLUE_SOURCES =		\
	screensaver-glue.c	\
	thread-glue.c		\
	vmsize-glue.c

SYSINFO_GLUE_LIBADD = $(MONO_LIBS)

if ENABLE_LIBXSS
SYSINFO_GLUE_LIBADD += $(SYSTEMINFO_GLUE_X_LIBS)
endif

XDGMIME_GLUE_SOURCES =		\
	xdgmime/xdgmime.c	\
	xdgmime/xdgmime.h	\
	xdgmime/xdgmimeglob.c	\
	xdgmime/xdgmimeglob.h	\
	xdgmime/xdgmimeint.c	\
	xdgmime/xdgmimeint.h	\
	xdgmime/xdgmimemagic.c	\
	xdgmime/xdgmimemagic.h	\
	xdgmime/xdgmimealias.c	\
	xdgmime/xdgmimealias.h	\
	xdgmime/xdgmimeparent.c	\
	xdgmime/xdgmimeparent.h	\
	xdgmime/xdgmimecache.c	\
	xdgmime/xdgmimecache.h

libbeagleglue_la_SOURCES = 		\
	$(BEAGLED_GLUE_SOURCES)		\
	$(SCHEDULER_GLUE_SOURCES)	\
	$(SPAWN_GLUE_SOURCES)		\
	$(SYSINFO_GLUE_SOURCES)		\
	$(XDGMIME_GLUE_SOURCES)		\
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


