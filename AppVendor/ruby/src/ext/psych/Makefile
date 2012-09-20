
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
srcdir = $(top_srcdir)/ext/psych
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
LIBS =  -lyaml  -lpthread -ldl -lobjc 
SRCS = emitter.c parser.c psych.c to_ruby.c yaml_tree.c
OBJS = emitter.o parser.o psych.o to_ruby.o yaml_tree.o
TARGET = psych
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
pre-install-rb-default: $(RUBYLIBDIR)/psych
install-rb-default: $(RUBYLIBDIR)/psych/coder.rb $(RUBYLIBDIR)/psych
$(RUBYLIBDIR)/psych/coder.rb: $(srcdir)/lib/psych/coder.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/coder.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/coder.rb
install-rb-default: $(RUBYLIBDIR)/psych/core_ext.rb $(RUBYLIBDIR)/psych
$(RUBYLIBDIR)/psych/core_ext.rb: $(srcdir)/lib/psych/core_ext.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/core_ext.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/core_ext.rb
install-rb-default: $(RUBYLIBDIR)/psych/deprecated.rb $(RUBYLIBDIR)/psych
$(RUBYLIBDIR)/psych/deprecated.rb: $(srcdir)/lib/psych/deprecated.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/deprecated.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/deprecated.rb
install-rb-default: $(RUBYLIBDIR)/psych/handler.rb $(RUBYLIBDIR)/psych
$(RUBYLIBDIR)/psych/handler.rb: $(srcdir)/lib/psych/handler.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/handler.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/handler.rb
install-rb-default: $(RUBYLIBDIR)/psych/nodes.rb $(RUBYLIBDIR)/psych
$(RUBYLIBDIR)/psych/nodes.rb: $(srcdir)/lib/psych/nodes.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/nodes.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/nodes.rb
install-rb-default: $(RUBYLIBDIR)/psych/omap.rb $(RUBYLIBDIR)/psych
$(RUBYLIBDIR)/psych/omap.rb: $(srcdir)/lib/psych/omap.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/omap.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/omap.rb
install-rb-default: $(RUBYLIBDIR)/psych/parser.rb $(RUBYLIBDIR)/psych
$(RUBYLIBDIR)/psych/parser.rb: $(srcdir)/lib/psych/parser.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/parser.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/parser.rb
install-rb-default: $(RUBYLIBDIR)/psych/scalar_scanner.rb $(RUBYLIBDIR)/psych
$(RUBYLIBDIR)/psych/scalar_scanner.rb: $(srcdir)/lib/psych/scalar_scanner.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/scalar_scanner.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/scalar_scanner.rb
install-rb-default: $(RUBYLIBDIR)/psych/set.rb $(RUBYLIBDIR)/psych
$(RUBYLIBDIR)/psych/set.rb: $(srcdir)/lib/psych/set.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/set.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/set.rb
install-rb-default: $(RUBYLIBDIR)/psych/stream.rb $(RUBYLIBDIR)/psych
$(RUBYLIBDIR)/psych/stream.rb: $(srcdir)/lib/psych/stream.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/stream.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/stream.rb
install-rb-default: $(RUBYLIBDIR)/psych/streaming.rb $(RUBYLIBDIR)/psych
$(RUBYLIBDIR)/psych/streaming.rb: $(srcdir)/lib/psych/streaming.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/streaming.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/streaming.rb
install-rb-default: $(RUBYLIBDIR)/psych/syntax_error.rb $(RUBYLIBDIR)/psych
$(RUBYLIBDIR)/psych/syntax_error.rb: $(srcdir)/lib/psych/syntax_error.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/syntax_error.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/syntax_error.rb
install-rb-default: $(RUBYLIBDIR)/psych/tree_builder.rb $(RUBYLIBDIR)/psych
$(RUBYLIBDIR)/psych/tree_builder.rb: $(srcdir)/lib/psych/tree_builder.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/tree_builder.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/tree_builder.rb
install-rb-default: $(RUBYLIBDIR)/psych/visitors.rb $(RUBYLIBDIR)/psych
$(RUBYLIBDIR)/psych/visitors.rb: $(srcdir)/lib/psych/visitors.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/visitors.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/visitors.rb
pre-install-rb-default: $(RUBYLIBDIR)/psych/handlers
install-rb-default: $(RUBYLIBDIR)/psych/handlers/document_stream.rb $(RUBYLIBDIR)/psych/handlers
$(RUBYLIBDIR)/psych/handlers/document_stream.rb: $(srcdir)/lib/psych/handlers/document_stream.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/handlers/document_stream.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/handlers/document_stream.rb
pre-install-rb-default: $(RUBYLIBDIR)/psych/json
install-rb-default: $(RUBYLIBDIR)/psych/json/ruby_events.rb $(RUBYLIBDIR)/psych/json
$(RUBYLIBDIR)/psych/json/ruby_events.rb: $(srcdir)/lib/psych/json/ruby_events.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/json/ruby_events.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/json/ruby_events.rb
install-rb-default: $(RUBYLIBDIR)/psych/json/stream.rb $(RUBYLIBDIR)/psych/json
$(RUBYLIBDIR)/psych/json/stream.rb: $(srcdir)/lib/psych/json/stream.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/json/stream.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/json/stream.rb
install-rb-default: $(RUBYLIBDIR)/psych/json/tree_builder.rb $(RUBYLIBDIR)/psych/json
$(RUBYLIBDIR)/psych/json/tree_builder.rb: $(srcdir)/lib/psych/json/tree_builder.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/json/tree_builder.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/json/tree_builder.rb
install-rb-default: $(RUBYLIBDIR)/psych/json/yaml_events.rb $(RUBYLIBDIR)/psych/json
$(RUBYLIBDIR)/psych/json/yaml_events.rb: $(srcdir)/lib/psych/json/yaml_events.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/json/yaml_events.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/json/yaml_events.rb
pre-install-rb-default: $(RUBYLIBDIR)/psych/nodes
install-rb-default: $(RUBYLIBDIR)/psych/nodes/alias.rb $(RUBYLIBDIR)/psych/nodes
$(RUBYLIBDIR)/psych/nodes/alias.rb: $(srcdir)/lib/psych/nodes/alias.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/nodes/alias.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/nodes/alias.rb
install-rb-default: $(RUBYLIBDIR)/psych/nodes/document.rb $(RUBYLIBDIR)/psych/nodes
$(RUBYLIBDIR)/psych/nodes/document.rb: $(srcdir)/lib/psych/nodes/document.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/nodes/document.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/nodes/document.rb
install-rb-default: $(RUBYLIBDIR)/psych/nodes/mapping.rb $(RUBYLIBDIR)/psych/nodes
$(RUBYLIBDIR)/psych/nodes/mapping.rb: $(srcdir)/lib/psych/nodes/mapping.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/nodes/mapping.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/nodes/mapping.rb
install-rb-default: $(RUBYLIBDIR)/psych/nodes/node.rb $(RUBYLIBDIR)/psych/nodes
$(RUBYLIBDIR)/psych/nodes/node.rb: $(srcdir)/lib/psych/nodes/node.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/nodes/node.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/nodes/node.rb
install-rb-default: $(RUBYLIBDIR)/psych/nodes/scalar.rb $(RUBYLIBDIR)/psych/nodes
$(RUBYLIBDIR)/psych/nodes/scalar.rb: $(srcdir)/lib/psych/nodes/scalar.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/nodes/scalar.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/nodes/scalar.rb
install-rb-default: $(RUBYLIBDIR)/psych/nodes/sequence.rb $(RUBYLIBDIR)/psych/nodes
$(RUBYLIBDIR)/psych/nodes/sequence.rb: $(srcdir)/lib/psych/nodes/sequence.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/nodes/sequence.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/nodes/sequence.rb
install-rb-default: $(RUBYLIBDIR)/psych/nodes/stream.rb $(RUBYLIBDIR)/psych/nodes
$(RUBYLIBDIR)/psych/nodes/stream.rb: $(srcdir)/lib/psych/nodes/stream.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/nodes/stream.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/nodes/stream.rb
pre-install-rb-default: $(RUBYLIBDIR)/psych/visitors
install-rb-default: $(RUBYLIBDIR)/psych/visitors/depth_first.rb $(RUBYLIBDIR)/psych/visitors
$(RUBYLIBDIR)/psych/visitors/depth_first.rb: $(srcdir)/lib/psych/visitors/depth_first.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/visitors/depth_first.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/visitors/depth_first.rb
install-rb-default: $(RUBYLIBDIR)/psych/visitors/emitter.rb $(RUBYLIBDIR)/psych/visitors
$(RUBYLIBDIR)/psych/visitors/emitter.rb: $(srcdir)/lib/psych/visitors/emitter.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/visitors/emitter.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/visitors/emitter.rb
install-rb-default: $(RUBYLIBDIR)/psych/visitors/json_tree.rb $(RUBYLIBDIR)/psych/visitors
$(RUBYLIBDIR)/psych/visitors/json_tree.rb: $(srcdir)/lib/psych/visitors/json_tree.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/visitors/json_tree.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/visitors/json_tree.rb
install-rb-default: $(RUBYLIBDIR)/psych/visitors/to_ruby.rb $(RUBYLIBDIR)/psych/visitors
$(RUBYLIBDIR)/psych/visitors/to_ruby.rb: $(srcdir)/lib/psych/visitors/to_ruby.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/visitors/to_ruby.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/visitors/to_ruby.rb
install-rb-default: $(RUBYLIBDIR)/psych/visitors/visitor.rb $(RUBYLIBDIR)/psych/visitors
$(RUBYLIBDIR)/psych/visitors/visitor.rb: $(srcdir)/lib/psych/visitors/visitor.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/visitors/visitor.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/visitors/visitor.rb
install-rb-default: $(RUBYLIBDIR)/psych/visitors/yaml_tree.rb $(RUBYLIBDIR)/psych/visitors
$(RUBYLIBDIR)/psych/visitors/yaml_tree.rb: $(srcdir)/lib/psych/visitors/yaml_tree.rb
	$(Q) $(COPY) $(srcdir)/lib/psych/visitors/yaml_tree.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych/visitors/yaml_tree.rb
pre-install-rb-default: $(RUBYLIBDIR)
install-rb-default: $(RUBYLIBDIR)/psych.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/psych.rb: $(srcdir)/lib/psych.rb
	$(Q) $(COPY) $(srcdir)/lib/psych.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/psych.rb
pre-install-rb-default:
	$(ECHO) installing default psych libraries
clean-rb-default::
	@-$(RMDIRS) $(RUBYLIBDIR)/psych/nodes 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/psych/handlers 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/psych/json 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/psych/visitors 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/psych 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR) 2> /dev/null || true
$(RUBYARCHDIR):
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/psych:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/psych/handlers:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/psych/json:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/psych/nodes:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/psych/visitors:
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

$(OBJS): $(hdrdir)/ruby.h $(hdrdir)/ruby/defines.h $(arch_hdrdir)/ruby/config.h $(RUBY_EXTCONF_H)
