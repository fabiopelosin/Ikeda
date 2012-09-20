
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
srcdir = $(top_srcdir)/ext/json
topdir = ../..
hdrdir = $(top_srcdir)/include
arch_hdrdir = $(extout)/include/$(arch)
VPATH = $(srcdir):$(arch_hdrdir)/ruby:$(hdrdir)/ruby
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
INCFLAGS = -I. -I$(arch_hdrdir) -I$(hdrdir) -I$(srcdir)
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

CLEANFILES = mkmf.log
DISTCLEANFILES = 
DISTCLEANDIRS = 

extout = $(topdir)/.ext
extout_prefix = $(extout)$(target_prefix)/
target_prefix = 
LOCAL_LIBS = 
LIBS =   -lpthread -ldl -lobjc 
SRCS = 
OBJS = 
TARGET = 
DLLIB = 
EXTSTATIC = 4
STATIC_LIB = 

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

install-so: Makefile
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
pre-install-rb-default: $(RUBYLIBDIR)/json/add
install-rb-default: $(RUBYLIBDIR)/json/add/complex.rb $(RUBYLIBDIR)/json/add
$(RUBYLIBDIR)/json/add/complex.rb: $(srcdir)/lib/json/add/complex.rb
	$(Q) $(COPY) $(srcdir)/lib/json/add/complex.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/json/add/complex.rb
install-rb-default: $(RUBYLIBDIR)/json/add/core.rb $(RUBYLIBDIR)/json/add
$(RUBYLIBDIR)/json/add/core.rb: $(srcdir)/lib/json/add/core.rb
	$(Q) $(COPY) $(srcdir)/lib/json/add/core.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/json/add/core.rb
install-rb-default: $(RUBYLIBDIR)/json/add/rational.rb $(RUBYLIBDIR)/json/add
$(RUBYLIBDIR)/json/add/rational.rb: $(srcdir)/lib/json/add/rational.rb
	$(Q) $(COPY) $(srcdir)/lib/json/add/rational.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/json/add/rational.rb
pre-install-rb-default: $(RUBYLIBDIR)/json
install-rb-default: $(RUBYLIBDIR)/json/common.rb $(RUBYLIBDIR)/json
$(RUBYLIBDIR)/json/common.rb: $(srcdir)/lib/json/common.rb
	$(Q) $(COPY) $(srcdir)/lib/json/common.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/json/common.rb
install-rb-default: $(RUBYLIBDIR)/json/ext.rb $(RUBYLIBDIR)/json
$(RUBYLIBDIR)/json/ext.rb: $(srcdir)/lib/json/ext.rb
	$(Q) $(COPY) $(srcdir)/lib/json/ext.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/json/ext.rb
install-rb-default: $(RUBYLIBDIR)/json/version.rb $(RUBYLIBDIR)/json
$(RUBYLIBDIR)/json/version.rb: $(srcdir)/lib/json/version.rb
	$(Q) $(COPY) $(srcdir)/lib/json/version.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/json/version.rb
pre-install-rb-default: $(RUBYLIBDIR)
install-rb-default: $(RUBYLIBDIR)/json.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/json.rb: $(srcdir)/lib/json.rb
	$(Q) $(COPY) $(srcdir)/lib/json.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/json.rb
pre-install-rb-default:
	$(ECHO) installing default  libraries
clean-rb-default::
	@-$(RMDIRS) $(RUBYLIBDIR)/json/add 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/json 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR) 2> /dev/null || true
$(RUBYLIBDIR)/json/add:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/json:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR):
	$(Q) $(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

