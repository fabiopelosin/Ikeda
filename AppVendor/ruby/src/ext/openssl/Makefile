
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
srcdir = $(top_srcdir)/ext/openssl
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
LIBS =  -lssl -lcrypto  -lpthread -ldl -lobjc 
SRCS = openssl_missing.c ossl.c ossl_asn1.c ossl_bio.c ossl_bn.c ossl_cipher.c ossl_config.c ossl_digest.c ossl_engine.c ossl_hmac.c ossl_ns_spki.c ossl_ocsp.c ossl_pkcs12.c ossl_pkcs5.c ossl_pkcs7.c ossl_pkey.c ossl_pkey_dh.c ossl_pkey_dsa.c ossl_pkey_ec.c ossl_pkey_rsa.c ossl_rand.c ossl_ssl.c ossl_ssl_session.c ossl_x509.c ossl_x509attr.c ossl_x509cert.c ossl_x509crl.c ossl_x509ext.c ossl_x509name.c ossl_x509req.c ossl_x509revoked.c ossl_x509store.c
OBJS = openssl_missing.o ossl.o ossl_asn1.o ossl_bio.o ossl_bn.o ossl_cipher.o ossl_config.o ossl_digest.o ossl_engine.o ossl_hmac.o ossl_ns_spki.o ossl_ocsp.o ossl_pkcs12.o ossl_pkcs5.o ossl_pkcs7.o ossl_pkey.o ossl_pkey_dh.o ossl_pkey_dsa.o ossl_pkey_ec.o ossl_pkey_rsa.o ossl_rand.o ossl_ssl.o ossl_ssl_session.o ossl_x509.o ossl_x509attr.o ossl_x509cert.o ossl_x509crl.o ossl_x509ext.o ossl_x509name.o ossl_x509req.o ossl_x509revoked.o ossl_x509store.o
TARGET = openssl
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
pre-install-rb-default: $(RUBYLIBDIR)/openssl
install-rb-default: $(RUBYLIBDIR)/openssl/bn.rb $(RUBYLIBDIR)/openssl
$(RUBYLIBDIR)/openssl/bn.rb: $(srcdir)/lib/openssl/bn.rb
	$(Q) $(COPY) $(srcdir)/lib/openssl/bn.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/openssl/bn.rb
install-rb-default: $(RUBYLIBDIR)/openssl/buffering.rb $(RUBYLIBDIR)/openssl
$(RUBYLIBDIR)/openssl/buffering.rb: $(srcdir)/lib/openssl/buffering.rb
	$(Q) $(COPY) $(srcdir)/lib/openssl/buffering.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/openssl/buffering.rb
install-rb-default: $(RUBYLIBDIR)/openssl/cipher.rb $(RUBYLIBDIR)/openssl
$(RUBYLIBDIR)/openssl/cipher.rb: $(srcdir)/lib/openssl/cipher.rb
	$(Q) $(COPY) $(srcdir)/lib/openssl/cipher.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/openssl/cipher.rb
install-rb-default: $(RUBYLIBDIR)/openssl/config.rb $(RUBYLIBDIR)/openssl
$(RUBYLIBDIR)/openssl/config.rb: $(srcdir)/lib/openssl/config.rb
	$(Q) $(COPY) $(srcdir)/lib/openssl/config.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/openssl/config.rb
install-rb-default: $(RUBYLIBDIR)/openssl/digest.rb $(RUBYLIBDIR)/openssl
$(RUBYLIBDIR)/openssl/digest.rb: $(srcdir)/lib/openssl/digest.rb
	$(Q) $(COPY) $(srcdir)/lib/openssl/digest.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/openssl/digest.rb
install-rb-default: $(RUBYLIBDIR)/openssl/ssl-internal.rb $(RUBYLIBDIR)/openssl
$(RUBYLIBDIR)/openssl/ssl-internal.rb: $(srcdir)/lib/openssl/ssl-internal.rb
	$(Q) $(COPY) $(srcdir)/lib/openssl/ssl-internal.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/openssl/ssl-internal.rb
install-rb-default: $(RUBYLIBDIR)/openssl/ssl.rb $(RUBYLIBDIR)/openssl
$(RUBYLIBDIR)/openssl/ssl.rb: $(srcdir)/lib/openssl/ssl.rb
	$(Q) $(COPY) $(srcdir)/lib/openssl/ssl.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/openssl/ssl.rb
install-rb-default: $(RUBYLIBDIR)/openssl/x509-internal.rb $(RUBYLIBDIR)/openssl
$(RUBYLIBDIR)/openssl/x509-internal.rb: $(srcdir)/lib/openssl/x509-internal.rb
	$(Q) $(COPY) $(srcdir)/lib/openssl/x509-internal.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/openssl/x509-internal.rb
install-rb-default: $(RUBYLIBDIR)/openssl/x509.rb $(RUBYLIBDIR)/openssl
$(RUBYLIBDIR)/openssl/x509.rb: $(srcdir)/lib/openssl/x509.rb
	$(Q) $(COPY) $(srcdir)/lib/openssl/x509.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/openssl/x509.rb
pre-install-rb-default: $(RUBYLIBDIR)
install-rb-default: $(RUBYLIBDIR)/openssl.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/openssl.rb: $(srcdir)/lib/openssl.rb
	$(Q) $(COPY) $(srcdir)/lib/openssl.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/openssl.rb
pre-install-rb-default:
	$(ECHO) installing default openssl libraries
clean-rb-default::
	@-$(RMDIRS) $(RUBYLIBDIR)/openssl 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR) 2> /dev/null || true
$(RUBYARCHDIR):
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/openssl:
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
