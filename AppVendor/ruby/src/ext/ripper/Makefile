
SHELL = /bin/sh

# V=0 quiet, V=1 verbose.  other values don't work.
V = 0
Q1 = $(V:1=)
Q = $(Q1:0=@)
n=$(NULLCMD)
ECHO1 = $(V:1=@$n)
ECHO = $(ECHO1:0=@echo)

#### Start of system configuration section. ####
top_srcdir = $(topdir)/.
srcdir = $(top_srcdir)/ext/ripper
topdir = ../..
hdrdir = $(top_srcdir)/include
arch_hdrdir = $(extout)/include/$(arch)
VPATH = $(srcdir):$(arch_hdrdir)/ruby:$(hdrdir)/ruby:$(topdir):$(top_srcdir)
RUBYLIB =
RUBYOPT = -
prefix = $(DESTDIR)/Users/fabio/.sm/pkg/versions/tokaidoapp/1.9.3-p194
rubylibprefix = $(libdir)/$(RUBY_BASE_NAME)
exec_prefix = $(prefix)
vendorhdrdir = $(rubyhdrdir)/vendor_ruby
sitehdrdir = $(rubyhdrdir)/site_ruby
rubyhdrdir = $(includedir)/$(RUBY_BASE_NAME)-$(ruby_version)
vendordir = $(rubylibprefix)/vendor_ruby
sitedir = $(rubylibprefix)/site_ruby
ridir = $(datarootdir)/$(RI_BASE_NAME)
mandir = $(datarootdir)/man
localedir = $(datarootdir)/locale
libdir = $(exec_prefix)/lib
psdir = $(docdir)
pdfdir = $(docdir)
dvidir = $(docdir)
htmldir = $(docdir)
infodir = $(datarootdir)/info
docdir = $(datarootdir)/doc/$(PACKAGE)
oldincludedir = $(DESTDIR)/usr/include
includedir = $(prefix)/include
localstatedir = $(prefix)/var
sharedstatedir = $(prefix)/com
sysconfdir = $(DESTDIR)/etc
datadir = $(datarootdir)
datarootdir = $(prefix)/share
libexecdir = $(exec_prefix)/libexec
sbindir = $(exec_prefix)/sbin
bindir = $(exec_prefix)/bin
rubylibdir = $(rubylibprefix)/$(ruby_version)
archdir = $(rubylibdir)/$(arch)
sitelibdir = $(sitedir)/$(ruby_version)
sitearchdir = $(sitelibdir)/$(sitearch)
vendorlibdir = $(vendordir)/$(ruby_version)
vendorarchdir = $(vendorlibdir)/$(sitearch)

NULLCMD = :

CC = /usr/bin/gcc-4.2
CXX = g++
LIBRUBY = $(LIBRUBY_A)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = 
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static
OUTFLAG = -o 
COUTFLAG = -o 

RUBY_EXTCONF_H = extconf.h
cflags   =  $(optflags) $(debugflags) $(warnflags)
optflags = -O3
debugflags = -ggdb
warnflags = -Wextra -Wno-unused-parameter -Wno-parentheses -Wno-long-long -Wno-missing-field-initializers -Wpointer-arith -Wwrite-strings -Wdeclaration-after-statement -Wshorten-64-to-32 -Wimplicit-function-declaration
CFLAGS   =  -I/Users/fabio/.sm/pkg/active/include -pipe $(ARCH_FLAG)
INCFLAGS = -I. -I$(arch_hdrdir) -I$(hdrdir) -I$(srcdir) -I$(topdir) -I$(top_srcdir)
DEFS     = 
CPPFLAGS = -DRUBY_EXTCONF_H=\"$(RUBY_EXTCONF_H)\" -D_XOPEN_SOURCE -D_DARWIN_C_SOURCE $(DEFS) $(cppflags)
CXXFLAGS = $(CFLAGS) $(cxxflags)
ldflags  = -L. -Bstatic -L/Users/fabio/.sm/pkg/active/lib -L/usr/local/lib
dldflags = -Wl,-undefined,dynamic_lookup -Wl,-multiply_defined,suppress -Wl,-flat_namespace
ARCH_FLAG = 
DLDFLAGS = $(ldflags) $(dldflags) $(ARCH_FLAG)
LDSHARED = $(CC) -dynamic -bundle
LDSHAREDXX = $(CXX) -dynamic -bundle
AR = ar
EXEEXT = 

RUBY_BASE_NAME = ruby
RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
arch = x86_64-darwin12.2.0
sitearch = $(arch)
ruby_version = 1.9.1
ruby = $(topdir)/miniruby -I'$(topdir)' -I'$(top_srcdir)/lib' -I'$(extout)/$(arch)' -I'$(extout)/common'
RUBY = $(ruby)
RM = rm -f
RM_RF = $(RUBY) -run -e rm -- -rf
RMDIRS = rmdir -p
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(topdir)
LIBPATH =  -L. -L$(topdir)
DEFFILE = 

CLEANFILES = mkmf.log ripper.y ripper.c ripper.E ripper.output y.output eventids1.c eventids2table.c
DISTCLEANFILES = 
DISTCLEANDIRS = 

extout = $(topdir)/.ext
extout_prefix = $(extout)$(target_prefix)/
target_prefix = 
LOCAL_LIBS = 
LIBS =   -lpthread -ldl -lobjc 
SRCS = ripper.c
OBJS = ripper.o
TARGET = ripper
DLLIB = $(TARGET).bundle
EXTSTATIC = 4
STATIC_LIB = $(TARGET).a

BINDIR        = $(extout)/bin
RUBYCOMMONDIR = $(extout)/common
RUBYLIBDIR    = $(RUBYCOMMONDIR)$(target_prefix)
RUBYARCHDIR   = $(extout)/$(arch)$(target_prefix)
HDRDIR        = $(extout)/include/ruby$(target_prefix)
ARCHHDRDIR    = $(extout)/include/$(arch)/ruby$(target_prefix)

TARGET_SO     = $(RUBYARCHDIR)/$(DLLIB)
CLEANLIBS     = $(RUBYARCHDIR)/$(TARGET).bundle 
CLEANOBJS     = *.o  *.bak

all:    install
static: $(STATIC_LIB) install-rb
.PHONY: all install static install-so install-rb
.PHONY: clean clean-so clean-rb

clean-rb-default::
clean-rb::
clean-so::
clean: clean-so clean-rb-default clean-rb
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean-rb-default::
distclean-rb::
distclean-so::
distclean: clean distclean-so distclean-rb-default distclean-rb
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)
		@-$(RMDIRS) $(DISTCLEANDIRS) 2> /dev/null || true

realclean: distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
clean-so::
	@-$(RM) $(RUBYARCHDIR)/$(DLLIB)
	@-$(RMDIRS) $(RUBYARCHDIR) 2> /dev/null || true
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
pre-install-rb-default: $(RUBYLIBDIR)/ripper
install-rb-default: $(RUBYLIBDIR)/ripper/core.rb $(RUBYLIBDIR)/ripper
$(RUBYLIBDIR)/ripper/core.rb: $(srcdir)/lib/ripper/core.rb
	$(Q) $(COPY) $(srcdir)/lib/ripper/core.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/ripper/core.rb
install-rb-default: $(RUBYLIBDIR)/ripper/filter.rb $(RUBYLIBDIR)/ripper
$(RUBYLIBDIR)/ripper/filter.rb: $(srcdir)/lib/ripper/filter.rb
	$(Q) $(COPY) $(srcdir)/lib/ripper/filter.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/ripper/filter.rb
install-rb-default: $(RUBYLIBDIR)/ripper/lexer.rb $(RUBYLIBDIR)/ripper
$(RUBYLIBDIR)/ripper/lexer.rb: $(srcdir)/lib/ripper/lexer.rb
	$(Q) $(COPY) $(srcdir)/lib/ripper/lexer.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/ripper/lexer.rb
install-rb-default: $(RUBYLIBDIR)/ripper/sexp.rb $(RUBYLIBDIR)/ripper
$(RUBYLIBDIR)/ripper/sexp.rb: $(srcdir)/lib/ripper/sexp.rb
	$(Q) $(COPY) $(srcdir)/lib/ripper/sexp.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/ripper/sexp.rb
pre-install-rb-default: $(RUBYLIBDIR)
install-rb-default: $(RUBYLIBDIR)/ripper.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/ripper.rb: $(srcdir)/lib/ripper.rb
	$(Q) $(COPY) $(srcdir)/lib/ripper.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/ripper.rb
pre-install-rb-default:
	$(ECHO) installing default ripper libraries
clean-rb-default::
	@-$(RMDIRS) $(RUBYLIBDIR)/ripper 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR) 2> /dev/null || true
$(RUBYARCHDIR):
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/ripper:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR):
	$(Q) $(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .mm .cxx .cpp .C .o

.cc.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.mm.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.cxx.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.cpp.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.C.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.c.o:
	$(ECHO) compiling $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $<

.m.o:
	$(ECHO) compiling $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $<

$(RUBYARCHDIR)/$(DLLIB): $(OBJS) Makefile
	$(ECHO) linking shared-object $(DLLIB)
	@-$(RM) $(@)
	@-$(MAKEDIRS) $(@D)
	$(Q) $(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)

$(STATIC_LIB): $(OBJS)
	@-$(RM) $(@)
	$(ECHO) linking static-library $(@)
	$(Q) $(AR) cru $@ $(OBJS)
	@-ranlib $(DLLIB) 2> /dev/null || true

###
$(OBJS): $(RUBY_EXTCONF_H)

.SUFFIXES: .y .c

GEN  = $(srcdir)/tools/generate.rb
SRC1 = $(top_srcdir)/parse.y
SRC2 = $(srcdir)/eventids2.c
BISON = bison

.SUFFIXES: .y

src: ripper.c eventids1.c eventids2table.c

ripper.o: ripper.c lex.c eventids1.c eventids2.c eventids2table.c \
	$(hdrdir)/ruby/ruby.h $(arch_hdrdir)/ruby/config.h \
	$(hdrdir)/ruby/defines.h $(hdrdir)/ruby/intern.h \
	$(hdrdir)/ruby/encoding.h $(hdrdir)/ruby/missing.h \
	$(hdrdir)/../node.h $(hdrdir)/ruby/oniguruma.h \
	$(hdrdir)/ruby/regex.h $(hdrdir)/ruby/st.h $(hdrdir)/ruby/util.h

.y.c:
	$(ECHO) compiling compiler $<
	$(Q) $(BISON) -t -v -oy.tab.c $<
	$(Q) sed -f $(top_srcdir)/tool/ytab.sed -e "/^#/s!y\.tab\.c!$@!" y.tab.c > $@
	@$(RM) y.tab.c

all: check
static: check

ripper.y: $(srcdir)/tools/preproc.rb $(top_srcdir)/parse.y
	$(ECHO) extracting $@ from $(top_srcdir)/parse.y
	$(Q) $(RUBY) $(srcdir)/tools/preproc.rb $(top_srcdir)/parse.y --output=$@

check: $(GEN) $(SRC1) $(SRC2)
	$(ECHO) checking $(SRC1) and $(SRC2)
	$(Q) $(RUBY) $(GEN) --mode=check --ids1src=$(SRC1) --ids2src=$(SRC2)

eventids1.c: $(srcdir)/tools/generate.rb $(SRC1)
	$(ECHO) generating $@ from $(SRC1)
	$(Q) $(RUBY) $(GEN) --mode=eventids1 --ids1src=$(SRC1) --output=$@

eventids2table.c: $(srcdir)/tools/generate.rb $(SRC2)
	$(ECHO) generating $@ from $(SRC2)
	$(Q) $(RUBY) $(GEN) --mode=eventids2table --ids2src=$(SRC2) --output=$@

# Entries for Ripper maintainer

preproc: ripper.E
ripper.E: ripper.c
	$(ECHO) preprocessing ripper.c
	$(Q) $(CC) -E $(CPPFLAGS) ripper.c | $(RUBY) $(srcdir)/tools/strip.rb > $@
