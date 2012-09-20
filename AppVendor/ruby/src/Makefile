SHELL = /bin/sh
NULLCMD = :
RUNCMD = $(SHELL)
CHDIR = cd -P
exec = exec
NULL = /dev/null

#### Start of system configuration section. ####

srcdir = .
top_srcdir = $(srcdir)
hdrdir = $(srcdir)/include

CC = /usr/bin/gcc-4.2
CPP = $(CC) -E
YACC = bison
PURIFY =
AUTOCONF = autoconf

MKFILES = Makefile
BASERUBY = ruby
TEST_RUNNABLE = yes
DOXYGEN = 

prefix = /Users/fabio/.sm/pkg/versions/tokaidoapp/1.9.3-p194
exec_prefix = ${prefix}
bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
datarootdir = ${prefix}/share
datadir = ${datarootdir}
arch = x86_64-darwin12.2.0
sitearch = ${arch}
sitedir = ${rubylibprefix}/site_ruby
ruby_version = 1.9.1

TESTUI = console
TESTS =
INSTALLDOC = nodoc
DOCTARGETS = nodoc nodoc

EXTOUT = .ext
arch_hdrdir = $(EXTOUT)/include/$(arch)
VPATH = $(arch_hdrdir)/ruby:$(hdrdir)/ruby:$(srcdir)/enc:$(srcdir)/missing

empty =
OUTFLAG = -o $(empty)
COUTFLAG = -o $(empty)
ARCH_FLAG = 
CFLAGS = -I/Users/fabio/.sm/pkg/active/include -pipe $(ARCH_FLAG)
cflags =  ${optflags} ${debugflags} ${warnflags}
optflags = -O3
debugflags = -ggdb
warnflags = -Wextra -Wno-unused-parameter -Wno-parentheses -Wno-long-long -Wno-missing-field-initializers -Werror=pointer-arith -Werror=write-strings -Werror=declaration-after-statement -Werror=shorten-64-to-32 -Werror=implicit-function-declaration
INCFLAGS = -I. -I$(arch_hdrdir) -I$(hdrdir) -I$(srcdir)
XCFLAGS = -include ruby/config.h -include ruby/missing.h -fvisibility=hidden -DRUBY_EXPORT
CPPFLAGS = -D_XOPEN_SOURCE -D_DARWIN_C_SOURCE $(DEFS) ${cppflags} $(INCFLAGS)
LDFLAGS =  $(CFLAGS) -L. -Bstatic -L/Users/fabio/.sm/pkg/active/lib -L/usr/local/lib
EXTLDFLAGS = 
XLDFLAGS = -Wl,-u,_objc_msgSend $(EXTLDFLAGS)
EXTLIBS = 
LIBS = -lpthread -ldl -lobjc $(EXTLIBS)
MISSING =  ${LIBOBJDIR}setproctitle.o 
LDSHARED = $(CC) -dynamic -bundle
DLDFLAGS = -Wl,-undefined,dynamic_lookup -Wl,-multiply_defined,suppress -Wl,-flat_namespace $(EXTLDFLAGS) $(ARCH_FLAG)
SOLIBS = 
MAINLIBS = 
ARCHMINIOBJS = dmydln.o
BUILTIN_ENCOBJS =  ascii.$(OBJEXT) us_ascii.$(OBJEXT) unicode.$(OBJEXT) utf_8.$(OBJEXT)
BUILTIN_TRANSSRCS =  newline.c
BUILTIN_TRANSOBJS =  newline.$(OBJEXT)

RUBY_BASE_NAME=ruby
RUBY_PROGRAM_VERSION=1.9.3
RUBY_INSTALL_NAME=$(RUBY_BASE_NAME)
RUBY_SO_NAME=$(RUBY_BASE_NAME)
EXEEXT = 
PROGRAM=$(RUBY_INSTALL_NAME)$(EXEEXT)
RUBY = $(RUBY_INSTALL_NAME)
MINIRUBY = ./miniruby$(EXEEXT) -I$(srcdir)/lib -I. -I$(EXTOUT)/common\
	$(MINIRUBYOPT)
RUNRUBY = $(MINIRUBY) $(srcdir)/tool/runruby.rb --extout=$(EXTOUT) $(RUNRUBYOPT) -- $(RUN_OPTS)
XRUBY = $(RUNRUBY)
INSTALL = /usr/bin/install -c
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_SCRIPT = ${INSTALL}
INSTALL_PROGRAM = ${INSTALL}
XRUBY_LIBDIR = 
XRUBY_RUBYLIBDIR = 
XRUBY_RUBYHDRDIR = 

DEFAULT_PRELUDES = $(YES_GEM_PRELUDE)

#### End of system configuration section. ####

MAJOR=	1
MINOR=	9
TEENY=	1

LIBRUBY_A     = lib$(RUBY_SO_NAME)-static.a
LIBRUBY_SO    = lib$(RUBY_SO_NAME).so.$(MAJOR).$(MINOR).$(TEENY)
LIBRUBY_ALIASES= lib$(RUBY_SO_NAME).so
LIBRUBY	      = $(LIBRUBY_A)
LIBRUBYARG    = $(LIBRUBYARG_STATIC)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static
LIBRUBYARG_SHARED = 

THREAD_MODEL  = pthread

PREP          = miniruby$(EXEEXT)
ARCHFILE      = 
SETUP         =
EXTSTATIC     = static
SET_LC_MESSAGES = env LC_MESSAGES=C

MAKEDIRS      = mkdir -p
CP            = cp
MV            = mv
RM            = rm -f
RMDIR         = rmdir
RMDIRS        = rmdir -p
RMALL         = rm -fr
NM            = nm
AR            = ar
ARFLAGS       = rcu
RANLIB        = ranlib
AS            = as
ASFLAGS       =  $(INCFLAGS)
IFCHANGE      = $(srcdir)/tool/ifchange
SET_LC_MESSAGES = env LC_MESSAGES=C
OBJDUMP       = 
OBJCOPY       = :
VCS           = echo cannot
VCSUP         = $(VCS)

OBJEXT        = o
ASMEXT        = S
DLEXT         = bundle
MANTYPE	      = doc
SYMBOL_PREFIX = _

INSTALLED_LIST= .installed.list

MKMAIN_CMD    = mkmain.sh

SRC_FILE      = $<

MESSAGE_BEGIN = @for line in
MESSAGE_END = ; do echo "$$line"; done

configure_args =  '--enable-load-relative' '--with-static-linked-ext' '--disable-shared' '--disable-install-doc' '--prefix=/Users/fabio/.sm/pkg/versions/tokaidoapp/1.9.3-p194' '--sysconfdir=/etc' 'CC=/usr/bin/gcc-4.2' 'CFLAGS=-I/Users/fabio/.sm/pkg/active/include' 'LDFLAGS=-Bstatic -L/Users/fabio/.sm/pkg/active/lib'
#### End of variables

all:

.DEFAULT: all

# Prevent GNU make v3 from overflowing arg limit on SysV.
.NOEXPORT:

miniruby$(EXEEXT):
		@-if test -f $@; then $(MV) -f $@ $@.old; $(RM) $@.old; fi
		$(ECHO) linking $@
		$(Q) $(PURIFY) $(CC) $(LDFLAGS) $(XLDFLAGS) $(MAINLIBS) $(NORMALMAINOBJ) $(MINIOBJS) $(COMMONOBJS) $(DMYEXT) $(LIBS) $(OUTFLAG)$@

$(PROGRAM):
		@$(RM) $@
		$(ECHO) linking $@
		$(Q) $(PURIFY) $(CC) $(LDFLAGS) $(XLDFLAGS) $(MAINLIBS) $(MAINOBJ) $(EXTOBJS) $(LIBRUBYARG) $(LIBS) $(OUTFLAG)$@

# We must `rm' the library each time this rule is invoked because "updating" a
# MAB library on Apple/NeXT (see --enable-fat-binary in configure) is not
# supported.
$(LIBRUBY_A):
		@$(RM) $@
		$(ECHO) linking static-library $@
		$(Q) $(AR) $(ARFLAGS) $@ $(OBJS) $(DMYEXT)
		@-$(RANLIB) $@ 2> /dev/null || true

$(LIBRUBY_SO):
		@-$(PRE_LIBRUBY_UPDATE)
		$(ECHO) linking shared-library $@
		$(Q) $(LDSHARED) $(DLDFLAGS) $(OBJS) $(DLDOBJS) $(SOLIBS) $(OUTFLAG)$@
		-$(Q) $(OBJCOPY) -w -L '$(SYMBOL_PREFIX)Init_*' -L '$(SYMBOL_PREFIX)*_threadptr_*' $@
		@-$(MINIRUBY) -e 'ARGV.each{|link| File.delete link if File.exist? link; \
						  File.symlink "$(LIBRUBY_SO)", link}' \
				$(LIBRUBY_ALIASES) || true

fake: $(arch)-fake.rb
$(arch)-fake.rb: config.status $(srcdir)/template/fake.rb.in
		@./config.status --file=$@:$(srcdir)/template/fake.rb.in
		@chmod +x $@

ruby_pc = ruby-1.9.pc
$(ruby_pc):
		@./config.status --file=$@:$(srcdir)/template/ruby.pc.in

install-cross: $(arch)-fake.rb $(RBCONFIG) rbconfig.rb $(arch_hdrdir)/ruby/config.h \
	$(LIBRUBY_A) $(LIBRUBY_SO) $(ARCHFILE)
	$(ECHO) installing cross-compiling stuff
	$(Q) $(MAKEDIRS) $(XRUBY_RUBYLIBDIR)/$(arch) $(XRUBY_RUBYHDRDIR)/$(arch)/ruby
	$(Q) sed '/^\$$:\.unshift/q' $(arch)-fake.rb > fake.rb
	$(Q) $(BASERUBY) -p \
	-e '~/^\s*CONFIG\["LDFLAGS"\]/ and' \
	-e '$$_[/(?=\s*"$$)/] = %q[ #{(CONFIG["LIBPATHFLAG"]%File.dirname(__FILE__)).strip}]' \
	rbconfig.rb > fake-rbconfig.rb
	$(INSTALL_SCRIPT) fake.rb $(XRUBY_RUBYLIBDIR)/$(arch)/fake.rb
	$(INSTALL_SCRIPT) fake-rbconfig.rb $(XRUBY_RUBYLIBDIR)/$(arch)/rbconfig.rb
	@$(RM) fake.rb fake-rbconfig.rb
	$(INSTALL_DATA) $(arch_hdrdir)/ruby/config.h $(XRUBY_RUBYHDRDIR)/$(arch)/ruby
	$(INSTALL_DATA) $(top_srcdir)/include/ruby/win32.h $(XRUBY_RUBYHDRDIR)/ruby
	$(INSTALL_DATA) $(LIBRUBY) $(LIBRUBY_A) $(XRUBY_RUBYLIBDIR)/$(arch)
	$(INSTALL_PROGRAM) $(LIBRUBY_SO) $(XRUBY_RUBYLIBDIR)/$(arch)

Makefile:	$(srcdir)/Makefile.in $(srcdir)/enc/Makefile.in

$(MKFILES): config.status
		MAKE=$(MAKE) $(SHELL) ./config.status
		@{ \
		    echo "all:; -@rm -f conftest.mk"; \
		    echo "conftest.mk: .force; @echo AUTO_REMAKE"; \
		    echo ".force:"; \
		} > conftest.mk || exit 1; \
		$(MAKE) -f conftest.mk | grep '^AUTO_REMAKE$$' >/dev/null 2>&1 || \
		{ echo "Makefile updated, restart."; exit 1; }

uncommon.mk: $(srcdir)/common.mk
		sed 's/{\$$([^(){}]*)[^{}]*}//g' $< > $@

.PHONY: reconfig
reconfig-args = $(srcdir)/configure $(configure_args)
config.status-args = ./config.status --recheck
reconfig-exec-0 = exec 3>&1; exit `exec 4>&1; { "$$@" 3>&- 4>&-; echo $$? 1>&4; } | fgrep -v '(cached)' 1>&3`
reconfig-exec-1 = set -x; "$$@"

reconfig config.status:	$(srcdir)/configure $(srcdir)/enc/Makefile.in
	@PWD= MINIRUBY="$(MINIRUBY)"; export MINIRUBY; \
	set $(SHELL) $($@-args); $(reconfig-exec-$(V))

$(srcdir)/configure: $(srcdir)/configure.in
	$(CHDIR) $(srcdir) && exec $(AUTOCONF)

incs: id.h

# Things which should be considered:
# * with gperf v.s. without gperf
# * committers may have various versions of gperf
# * ./configure v.s. ../ruby/configure
# * GNU make v.s. HP-UX make	# HP-UX make invokes the action if lex.c and keywords has same mtime.
# * svn checkout generate a file with mtime as current time
# * ext4 and XFS has a mtime with fractional part
lex.c: defs/keywords
	@\
	if cmp -s $(srcdir)/defs/lex.c.src $?; then \
	  [ $(Q) ] && echo copying $@ || set -x; \
	  $(CP) $(srcdir)/lex.c.blt $@; \
	else \
	  [ $(Q) ] && echo generating $@ || set -x; \
	  gperf -C -p -j1 -i 1 -g -o -t -N rb_reserved_word -k1,3,$$ $? > $@.tmp && \
	  $(MV) $@.tmp $@ && \
	  $(CP) $? $(srcdir)/defs/lex.c.src && \
	  $(CP) $@ $(srcdir)/lex.c.blt; \
	fi

NAME2CTYPE_OPTIONS = -7 -c -j1 -i1 -t -C -P -T -H uniname2ctype_hash -Q uniname2ctype_pool -N uniname2ctype_p

enc/unicode/name2ctype.h: enc/unicode/name2ctype.kwd
	$(MAKEDIRS) $(@D)
	@set +e; \
	if cmp -s $(?:.kwd=.src) $?; then \
	  set -x; \
	  $(CP) $(?:.kwd=.h.blt) $@; \
	else \
	  trap '$(RM) $@-1.h $@-2.h' 0 && \
	  set -x; \
	  sed '/^#ifdef USE_UNICODE_PROPERTIES/,/^#endif/d' $? | gperf $(NAME2CTYPE_OPTIONS) > $@-1.h && \
	  gperf $(NAME2CTYPE_OPTIONS) < $? > $@-2.h && \
	  diff -DUSE_UNICODE_PROPERTIES $@-1.h $@-2.h > $@.tmp || :; \
	  $(MV) $@.tmp $@ && \
	  $(CP) $? $(?:.kwd=.src) && \
	  $(CP) $@ $(?:.kwd=.h.blt); \
	fi

.c.o:
	@$(ECHO) compiling $<
	$(Q) $(CC) $(CFLAGS) $(XCFLAGS) $(CPPFLAGS) $(COUTFLAG)$@ -c $<

.s.o:
	@$(ECHO) assembling $<
	$(Q) $(AS) $(ASFLAGS) -o $@ $<

.c.S:
	@$(ECHO) translating $<
	$(Q) $(CC) $(CFLAGS) $(XCFLAGS) $(CPPFLAGS) $(COUTFLAG)$@ -S $<

.c.i:
	@$(ECHO) preprocessing $<
	$(Q) $(CPP) $(XCFLAGS) $(CPPFLAGS) $(COUTFLAG)$@ -E $< > $@

clean-local::
	$(Q)$(RM) ext/extinit.c ext/extinit.$(OBJEXT) ext/ripper/y.output
	-$(Q)$(RM) $(pkgconfig_DATA)

distclean-local::
	$(Q)$(RM) ext/config.cache $(RBCONFIG) Doxyfile
	-$(Q)$(RM) run.gdb
	-$(Q)$(RM) $(INSTALLED_LIST) $(arch_hdrdir)/ruby/config.h
	-$(Q)$(RMDIRS) $(arch_hdrdir)/ruby 2> /dev/null || true

clean-ext distclean-ext realclean-ext::
	@cd ext 2>/dev/null || exit 0; set dummy `echo "${EXTS}" | tr , ' '`; shift; \
	test "$$#" = 0 && set .; \
	set dummy `\
	    find "$$@" -name Makefile -print | sed 's:^\./::;s:/Makefile$$:~:' | sort | sed 's:~$$::'; \
	`; shift; \
	cd ..; \
	for dir do \
	    echo $(@:-ext=)ing "$$dir"; \
	    (cd "ext/$$dir" && exec $(MAKE) $(MFLAGS) $(@:-ext=)) && \
	    case "$@" in \
	    *distclean-ext*|*realclean-ext*) \
		$(RMDIRS) "ext/$$dir" 2> /dev/null || true;; \
	    esac; \
	done

distclean-ext realclean-ext::
	-$(Q)$(RMDIR) ext 2> /dev/null || true

clean-extout:
	-$(Q)$(RMDIRS) $(EXTOUT) 2> /dev/null || true

clean-enc distclean-enc realclean-enc:
	@test -f "$(ENC_MK)" || exit 0; \
	echo $(@:-enc=ing) encodings; \
	exec $(MAKE) -f $(ENC_MK) $(MFLAGS) $(@:-enc=)

clean-rdoc distclean-rdoc realclean-rdoc:
	@echo $(@:-rdoc=ing) rdoc
	$(Q)$(RMALL) $(RDOCOUT)
clean-capi distclean-capi realclean-capi:
	@echo $(@:-capi=ing) capi
	$(Q)$(RMALL) $(CAPIOUT)


ext/extinit.$(OBJEXT): ext/extinit.c $(SETUP)
	$(ECHO) compiling $@
	$(Q) $(CC) $(CFLAGS) $(XCFLAGS) $(CPPFLAGS) $(COUTFLAG)$@ -c ext/extinit.c

up::
	@$(CHDIR) "$(srcdir)" && LC_TIME=C exec $(VCSUP)

update-mspec:
	@$(CHDIR) $(srcdir); \
	if [ -d spec/mspec ]; then \
	  cd spec/mspec; \
	  echo updating mspec ...; \
	  exec git pull; \
	else \
	  echo retrieving mspec ...; \
	  exec git clone $(MSPEC_GIT_URL) spec/mspec; \
	fi

update-rubyspec: update-mspec
	@$(CHDIR) $(srcdir); \
	if [ -d spec/rubyspec ]; then \
	  cd spec/rubyspec; \
	  echo updating rubyspec ...; \
	  exec git pull; \
	else \
	  echo retrieving rubyspec ...; \
	  exec git clone $(RUBYSPEC_GIT_URL) spec/rubyspec; \
	fi

test-rubyspec-precheck:
	@if [ ! -d $(srcdir)/spec/rubyspec ]; then echo No rubyspec here.  make update-rubyspec first.; exit 1; fi

INSNS	= opt_sc.inc optinsn.inc optunifs.inc insns.inc insns_info.inc \
	  vmtc.inc vm.inc

$(INSNS): $(srcdir)/insns.def vm_opts.h \
	  $(srcdir)/defs/opt_operand.def $(srcdir)/defs/opt_insn_unif.def \
	  $(srcdir)/tool/instruction.rb $(srcdir)/tool/insns2vm.rb
	$(ECHO) generating $@
	$(Q) $(BASERUBY) -Ks $(srcdir)/tool/insns2vm.rb $(INSNS2VMOPT) $@

distclean-local::; @$(RM) GNUmakefile uncommon.mk
