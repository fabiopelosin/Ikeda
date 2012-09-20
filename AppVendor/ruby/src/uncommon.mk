bin: $(PROGRAM) $(WPROGRAM)
lib: $(LIBRUBY)
dll: $(LIBRUBY_SO)

.SUFFIXES: .inc .h .c .y .i

# V=0 quiet, V=1 verbose.  other values don't work.
V = 0
Q1 = $(V:1=)
Q = $(Q1:0=@)
n=$(NULLCMD)
ECHO1 = $(V:1=@$n)
ECHO = $(ECHO1:0=@echo)

RUBYLIB       = -
RUBYOPT       = -
RUN_OPTS      = --disable-gems

SPEC_GIT_BASE = git://github.com/rubyspec
MSPEC_GIT_URL = $(SPEC_GIT_BASE)/mspec.git
RUBYSPEC_GIT_URL = $(SPEC_GIT_BASE)/rubyspec.git

STATIC_RUBY   = static-ruby

EXTCONF       = extconf.rb
RBCONFIG      = ./.rbconfig.time
LIBRUBY_EXTS  = ./.libruby-with-ext.time
REVISION_H    = ./.revision.time
RDOCOUT       = $(EXTOUT)/rdoc
CAPIOUT       = doc/capi
ID_H_TARGET   = -id.h-

DMYEXT	      = dmyext.$(OBJEXT)
NORMALMAINOBJ = main.$(OBJEXT)
MAINOBJ       = $(NORMALMAINOBJ)
EXTOBJS	      = 
DLDOBJS	      = $(DMYEXT)
MINIOBJS      = $(ARCHMINIOBJS) dmyencoding.$(OBJEXT) dmyversion.$(OBJEXT) miniprelude.$(OBJEXT)
ENC_MK        = enc.mk

COMMONOBJS    = array.$(OBJEXT) \
		bignum.$(OBJEXT) \
		class.$(OBJEXT) \
		compar.$(OBJEXT) \
		complex.$(OBJEXT) \
		dir.$(OBJEXT) \
		dln_find.$(OBJEXT) \
		enum.$(OBJEXT) \
		enumerator.$(OBJEXT) \
		error.$(OBJEXT) \
		eval.$(OBJEXT) \
		load.$(OBJEXT) \
		proc.$(OBJEXT) \
		file.$(OBJEXT) \
		gc.$(OBJEXT) \
		hash.$(OBJEXT) \
		inits.$(OBJEXT) \
		io.$(OBJEXT) \
		marshal.$(OBJEXT) \
		math.$(OBJEXT) \
		node.$(OBJEXT) \
		numeric.$(OBJEXT) \
		object.$(OBJEXT) \
		pack.$(OBJEXT) \
		parse.$(OBJEXT) \
		process.$(OBJEXT) \
		random.$(OBJEXT) \
		range.$(OBJEXT) \
		rational.$(OBJEXT) \
		re.$(OBJEXT) \
		regcomp.$(OBJEXT) \
		regenc.$(OBJEXT) \
		regerror.$(OBJEXT) \
		regexec.$(OBJEXT) \
		regparse.$(OBJEXT) \
		regsyntax.$(OBJEXT) \
		ruby.$(OBJEXT) \
		safe.$(OBJEXT) \
		signal.$(OBJEXT) \
		sprintf.$(OBJEXT) \
		st.$(OBJEXT) \
		strftime.$(OBJEXT) \
		string.$(OBJEXT) \
		struct.$(OBJEXT) \
		time.$(OBJEXT) \
		transcode.$(OBJEXT) \
		util.$(OBJEXT) \
		variable.$(OBJEXT) \
		compile.$(OBJEXT) \
		debug.$(OBJEXT) \
		iseq.$(OBJEXT) \
		vm.$(OBJEXT) \
		vm_dump.$(OBJEXT) \
		thread.$(OBJEXT) \
		cont.$(OBJEXT) \
		$(BUILTIN_ENCOBJS) \
		$(BUILTIN_TRANSOBJS) \
		$(MISSING)

EXPORTOBJS    = dln.$(OBJEXT) \
		encoding.$(OBJEXT) \
		version.$(OBJEXT) \
		$(COMMONOBJS)

OBJS          = $(EXPORTOBJS) prelude.$(OBJEXT)

GOLFOBJS      = goruby.$(OBJEXT) golf_prelude.$(OBJEXT)

PRELUDE_SCRIPTS = $(srcdir)/prelude.rb $(srcdir)/enc/prelude.rb $(DEFAULT_PRELUDES)
GEM_PRELUDE = $(srcdir)/gem_prelude.rb
YES_GEM_PRELUDE = $(GEM_PRELUDE)
NO_GEM_PRELUDE =
PRELUDES      = prelude.c miniprelude.c
GOLFPRELUDES = golf_prelude.c

SCRIPT_ARGS   =	--dest-dir="$(DESTDIR)" \
		--extout="$(EXTOUT)" \
		--mflags="$(MFLAGS)" \
		--make-flags="$(MAKEFLAGS)"
EXTMK_ARGS    =	$(SCRIPT_ARGS) --extension $(EXTS) --extstatic $(EXTSTATIC) \
		--make-flags="V=$(V) MINIRUBY='$(MINIRUBY)'" --
INSTRUBY      =	$(SUDO) $(MINIRUBY) $(srcdir)/tool/rbinstall.rb
INSTRUBY_ARGS =	$(SCRIPT_ARGS) \
		--data-mode=$(INSTALL_DATA_MODE) \
		--prog-mode=$(INSTALL_PROG_MODE) \
		--installed-list $(INSTALLED_LIST) \
		--mantype="$(MANTYPE)"
INSTALL_PROG_MODE = 0755
INSTALL_DATA_MODE = 0644

PRE_LIBRUBY_UPDATE = $(MINIRUBY) -e 'ARGV[1] or File.unlink(ARGV[0]) rescue nil' -- \
			$(LIBRUBY_EXTS) $(LIBRUBY_SO_UPDATE)

TESTSDIR      = $(srcdir)/test
TESTWORKDIR   = testwork

TESTRUN_SCRIPT = $(srcdir)/test.rb

BOOTSTRAPRUBY = $(BASERUBY)

COMPILE_PRELUDE = $(MINIRUBY) -I$(srcdir) $(srcdir)/tool/compile_prelude.rb

all: showflags main docs

main: showflags encs exts
	@$(NULLCMD)

.PHONY: showflags
exts enc trans: showflags
showflags:
	$(MESSAGE_BEGIN) \
	"	CC = $(CC)" \
	"	LD = $(LD)" \
	"	LDSHARED = $(LDSHARED)" \
	"	CFLAGS = $(CFLAGS)" \
	"	XCFLAGS = $(XCFLAGS)" \
	"	CPPFLAGS = $(CPPFLAGS)" \
	"	DLDFLAGS = $(DLDFLAGS)" \
	"	SOLIBS = $(SOLIBS)" \
	$(MESSAGE_END)

.PHONY: showconfig
showconfig:
	@$(MESSAGE_BEGIN) \
	"$(configure_args)" \
	$(MESSAGE_END)

exts: build-ext

EXTS_MK = exts.mk
$(EXTS_MK): $(MKFILES) incs $(PREP) $(RBCONFIG) $(LIBRUBY)
	@$(MINIRUBY) $(srcdir)/ext/extmk.rb --make="$(MAKE)" --command-output=$(EXTS_MK) $(EXTMK_ARGS) configure

configure-ext: $(EXTS_MK)

build-ext: $(EXTS_MK)
	$(Q)$(MAKE) -f $(EXTS_MK) $(MFLAGS)

$(MKMAIN_CMD): $(MKFILES) incs $(PREP) $(RBCONFIG) $(LIBRUBY)
	@$(MINIRUBY) $(srcdir)/ext/extmk.rb --make="$(MAKE)" --command-output=$@ $(EXTMK_ARGS)

prog: program wprogram

loadpath: $(PREP) PHONY
	$(MINIRUBY) -e 'p $$:'

$(PREP): $(MKFILES)

miniruby$(EXEEXT): config.status $(NORMALMAINOBJ) $(MINIOBJS) $(COMMONOBJS) $(DMYEXT) $(ARCHFILE)

GORUBY = go$(RUBY_INSTALL_NAME)
golf: $(LIBRUBY) $(GOLFOBJS) PHONY
	$(Q) $(MAKE) $(MFLAGS) MAINOBJ="$(GOLFOBJS)" PROGRAM=$(GORUBY)$(EXEEXT) program
capi: $(CAPIOUT)/.timestamp PHONY

doc/capi/.timestamp: Doxyfile $(PREP)
	$(Q) $(MAKEDIRS) doc/capi
	$(ECHO) generating capi
	$(Q) $(DOXYGEN) -b
	$(Q) $(MINIRUBY) -e 'File.open("$(CAPIOUT)/.timestamp", "w"){|f| f.puts(Time.now)}'

Doxyfile: $(srcdir)/template/Doxyfile.tmpl $(PREP) $(srcdir)/tool/generic_erb.rb $(RBCONFIG)
	$(ECHO) generating $@
	$(Q) $(MINIRUBY) $(srcdir)/tool/generic_erb.rb -o $@ $(srcdir)/template/Doxyfile.tmpl \
	--srcdir="$(srcdir)" --miniruby="$(MINIRUBY)"

program: showflags $(PROGRAM)
wprogram: showflags $(WPROGRAM)

$(PROGRAM): $(LIBRUBY) $(MAINOBJ) $(OBJS) $(EXTOBJS) $(SETUP) $(PREP)

$(LIBRUBY_A):	$(OBJS) $(DMYEXT) $(ARCHFILE)

$(LIBRUBY_SO):	$(OBJS) $(DLDOBJS) $(LIBRUBY_A) $(PREP) $(LIBRUBY_SO_UPDATE) $(BUILTIN_ENCOBJS)

$(LIBRUBY_EXTS):
	@exit > $@

$(STATIC_RUBY)$(EXEEXT): $(MAINOBJ) $(DLDOBJS) $(EXTOBJS) $(LIBRUBY_A)
	@$(RM) $@
	$(PURIFY) $(CC) $(MAINOBJ) $(DLDOBJS) $(EXTOBJS) $(LIBRUBY_A) $(MAINLIBS) $(EXTLIBS) $(LIBS) $(OUTFLAG)$@ $(LDFLAGS) $(XLDFLAGS)

ruby.imp: $(EXPORTOBJS)
	@$(NM) -Pgp $(EXPORTOBJS) | \
	awk 'BEGIN{print "#!"}; $$2~/^[BDT]$$/&&$$1!~/^(Init_|.*_threadptr_|\.)/{print $$1}' | \
	sort -u -o $@

install: install-$(INSTALLDOC)
docs: $(DOCTARGETS)
pkgconfig-data: $(ruby_pc)
$(ruby_pc): $(srcdir)/template/ruby.pc.in config.status

install-all: docs pre-install-all do-install-all post-install-all
pre-install-all:: pre-install-local pre-install-ext pre-install-doc
do-install-all: $(PROGRAM)
	$(INSTRUBY) --make="$(MAKE)" $(INSTRUBY_ARGS) --install=all --rdoc-output="$(RDOCOUT)"
post-install-all:: post-install-local post-install-ext post-install-doc
	@$(NULLCMD)

install-nodoc: pre-install-nodoc do-install-nodoc post-install-nodoc
pre-install-nodoc:: pre-install-local pre-install-ext
do-install-nodoc: $(PREP)
	$(INSTRUBY) --make="$(MAKE)" $(INSTRUBY_ARGS)
post-install-nodoc:: post-install-local post-install-ext

install-local: pre-install-local do-install-local post-install-local
pre-install-local:: pre-install-bin pre-install-lib pre-install-man
do-install-local: $(PREP)
	$(INSTRUBY) --make="$(MAKE)" $(INSTRUBY_ARGS) --install=local
post-install-local:: post-install-bin post-install-lib post-install-man

install-ext: pre-install-ext do-install-ext post-install-ext
pre-install-ext:: pre-install-ext-arch pre-install-ext-comm
do-install-ext: $(PREP)
	$(INSTRUBY) --make="$(MAKE)" $(INSTRUBY_ARGS) --install=ext
post-install-ext:: post-install-ext-arch post-install-ext-comm

install-arch: pre-install-arch do-install-arch post-install-arch
pre-install-arch:: pre-install-bin pre-install-ext-arch
do-install-arch: $(PREP)
	$(INSTRUBY) --make="$(MAKE)" $(INSTRUBY_ARGS) --install=bin --install=ext-arch
post-install-arch:: post-install-bin post-install-ext-arch

install-comm: pre-install-comm do-install-comm post-install-comm
pre-install-comm:: pre-install-lib pre-install-ext-comm pre-install-man
do-install-comm: $(PREP)
	$(INSTRUBY) --make="$(MAKE)" $(INSTRUBY_ARGS) --install=lib --install=ext-comm --install=man
post-install-comm:: post-install-lib post-install-ext-comm post-install-man

install-bin: pre-install-bin do-install-bin post-install-bin
pre-install-bin:: install-prereq
do-install-bin: $(PREP)
	$(INSTRUBY) --make="$(MAKE)" $(INSTRUBY_ARGS) --install=bin
post-install-bin::
	@$(NULLCMD)

install-lib: pre-install-lib do-install-lib post-install-lib
pre-install-lib:: install-prereq
do-install-lib: $(PREP)
	$(INSTRUBY) --make="$(MAKE)" $(INSTRUBY_ARGS) --install=lib
post-install-lib::
	@$(NULLCMD)

install-ext-comm: pre-install-ext-comm do-install-ext-comm post-install-ext-comm
pre-install-ext-comm:: install-prereq
do-install-ext-comm: $(PREP)
	$(INSTRUBY) --make="$(MAKE)" $(INSTRUBY_ARGS) --install=ext-comm
post-install-ext-comm::
	@$(NULLCMD)

install-ext-arch: pre-install-ext-arch do-install-ext-arch post-install-ext-arch
pre-install-ext-arch:: install-prereq
do-install-ext-arch: $(PREP)
	$(INSTRUBY) --make="$(MAKE)" $(INSTRUBY_ARGS) --install=ext-arch
post-install-ext-arch::
	@$(NULLCMD)

install-man: pre-install-man do-install-man post-install-man
pre-install-man:: install-prereq
do-install-man: $(PREP)
	$(INSTRUBY) --make="$(MAKE)" $(INSTRUBY_ARGS) --install=man
post-install-man::
	@$(NULLCMD)

install-capi: capi pre-install-capi do-install-capi post-install-capi
pre-install-capi:: install-prereq
do-install-capi: $(PREP)
	$(INSTRUBY) --make="$(MAKE)" $(INSTRUBY_ARGS) --install=capi
post-install-capi::
	@$(NULLCMD)

what-where: no-install
no-install: no-install-$(INSTALLDOC)
what-where-all: no-install-all
no-install-all: pre-no-install-all dont-install-all post-no-install-all
pre-no-install-all:: pre-no-install-local pre-no-install-ext pre-no-install-doc
dont-install-all: $(PROGRAM)
	$(INSTRUBY) -n --make="$(MAKE)" $(INSTRUBY_ARGS) --install=all --rdoc-output="$(RDOCOUT)"
post-no-install-all:: post-no-install-local post-no-install-ext post-no-install-doc
	@$(NULLCMD)

what-where-nodoc: no-install-nodoc
no-install-nodoc: pre-no-install-nodoc dont-install-nodoc post-no-install-nodoc
pre-no-install-nodoc:: pre-no-install-local pre-no-install-ext
dont-install-nodoc:  $(PREP)
	$(INSTRUBY) -n --make="$(MAKE)" $(INSTRUBY_ARGS)
post-no-install-nodoc:: post-no-install-local post-no-install-ext

what-where-local: no-install-local
no-install-local: pre-no-install-local dont-install-local post-no-install-local
pre-no-install-local:: pre-no-install-bin pre-no-install-lib pre-no-install-man
dont-install-local: $(PREP)
	$(INSTRUBY) -n --make="$(MAKE)" $(INSTRUBY_ARGS) --install=local
post-no-install-local:: post-no-install-bin post-no-install-lib post-no-install-man

what-where-ext: no-install-ext
no-install-ext: pre-no-install-ext dont-install-ext post-no-install-ext
pre-no-install-ext:: pre-no-install-ext-arch pre-no-install-ext-comm
dont-install-ext: $(PREP)
	$(INSTRUBY) -n --make="$(MAKE)" $(INSTRUBY_ARGS) --install=ext
post-no-install-ext:: post-no-install-ext-arch post-no-install-ext-comm

what-where-arch: no-install-arch
no-install-arch: pre-no-install-arch dont-install-arch post-no-install-arch
pre-no-install-arch:: pre-no-install-bin pre-no-install-ext-arch
dont-install-arch: $(PREP)
	$(INSTRUBY) -n --make="$(MAKE)" $(INSTRUBY_ARGS) --install=bin --install=ext-arch
post-no-install-arch:: post-no-install-lib post-no-install-man post-no-install-ext-arch

what-where-comm: no-install-comm
no-install-comm: pre-no-install-comm dont-install-comm post-no-install-comm
pre-no-install-comm:: pre-no-install-lib pre-no-install-ext-comm pre-no-install-man
dont-install-comm: $(PREP)
	$(INSTRUBY) -n --make="$(MAKE)" $(INSTRUBY_ARGS) --install=lib --install=ext-comm --install=man
post-no-install-comm:: post-no-install-lib post-no-install-ext-comm post-no-install-man

what-where-bin: no-install-bin
no-install-bin: pre-no-install-bin dont-install-bin post-no-install-bin
pre-no-install-bin:: install-prereq
dont-install-bin: $(PREP)
	$(INSTRUBY) -n --make="$(MAKE)" $(INSTRUBY_ARGS) --install=bin
post-no-install-bin::
	@$(NULLCMD)

what-where-lib: no-install-lib
no-install-lib: pre-no-install-lib dont-install-lib post-no-install-lib
pre-no-install-lib:: install-prereq
dont-install-lib: $(PREP)
	$(INSTRUBY) -n --make="$(MAKE)" $(INSTRUBY_ARGS) --install=lib
post-no-install-lib::
	@$(NULLCMD)

what-where-ext-comm: no-install-ext-comm
no-install-ext-comm: pre-no-install-ext-comm dont-install-ext-comm post-no-install-ext-comm
pre-no-install-ext-comm:: install-prereq
dont-install-ext-comm: $(PREP)
	$(INSTRUBY) -n --make="$(MAKE)" $(INSTRUBY_ARGS) --install=ext-comm
post-no-install-ext-comm::
	@$(NULLCMD)

what-where-ext-arch: no-install-ext-arch
no-install-ext-arch: pre-no-install-ext-arch dont-install-ext-arch post-no-install-ext-arch
pre-no-install-ext-arch:: install-prereq
dont-install-ext-arch: $(PREP)
	$(INSTRUBY) -n --make="$(MAKE)" $(INSTRUBY_ARGS) --install=ext-arch
post-no-install-ext-arch::
	@$(NULLCMD)

what-where-man: no-install-man
no-install-man: pre-no-install-man dont-install-man post-no-install-man
pre-no-install-man:: install-prereq
dont-install-man: $(PREP)
	$(INSTRUBY) -n --make="$(MAKE)" $(INSTRUBY_ARGS) --install=man
post-no-install-man::
	@$(NULLCMD)

install-doc: rdoc pre-install-doc do-install-doc post-install-doc
pre-install-doc:: install-prereq
do-install-doc: $(PROGRAM)
	$(INSTRUBY) --make="$(MAKE)" $(INSTRUBY_ARGS) --install=rdoc --rdoc-output="$(RDOCOUT)"
post-install-doc::
	@$(NULLCMD)

rdoc: PHONY main
	@echo Generating RDoc documentation
	$(Q) $(XRUBY) "$(srcdir)/bin/rdoc" --encoding=UTF-8 --no-force-update --all --ri --op "$(RDOCOUT)" $(RDOCFLAGS) "$(srcdir)"

rdoc-coverage: PHONY main
	@echo Generating RDoc coverage report
	$(Q) $(XRUBY) "$(srcdir)/bin/rdoc" --encoding=UTF-8 --all --quiet -C $(RDOCFLAGS) "$(srcdir)"

nodoc: PHONY

what-where-doc: no-install-doc
no-install-doc: pre-no-install-doc dont-install-doc post-no-install-doc
pre-no-install-doc:: install-prereq
dont-install-doc:: $(PREP)
	$(INSTRUBY) -n --make="$(MAKE)" $(INSTRUBY_ARGS) --install=rdoc --rdoc-output="$(RDOCOUT)"
post-no-install-doc::
	@$(NULLCMD)

CLEAR_INSTALLED_LIST = clear-installed-list

install-prereq: $(CLEAR_INSTALLED_LIST) PHONY

clear-installed-list: PHONY
	@> $(INSTALLED_LIST) set MAKE="$(MAKE)"

clean: clean-ext clean-local clean-enc clean-golf clean-rdoc clean-capi clean-extout
clean-local:: PHONY
	@$(RM) $(OBJS) $(MINIOBJS) $(MAINOBJ) $(LIBRUBY_A) $(LIBRUBY_SO) $(LIBRUBY) $(LIBRUBY_ALIASES)
	@$(RM) $(PROGRAM) $(WPROGRAM) miniruby$(EXEEXT) dmyext.$(OBJEXT) $(ARCHFILE) .*.time
	@$(RM) y.tab.c y.output encdb.h transdb.h prelude.c config.log rbconfig.rb $(ruby_pc)
clean-ext:: PHONY
clean-golf: PHONY
	@$(RM) $(GORUBY)$(EXEEXT) $(GOLFOBJS)
clean-rdoc: PHONY
clean-capi: PHONY
clean-extout: PHONY
clean-docs: clean-rdoc clean-capi

distclean: distclean-ext distclean-local distclean-enc distclean-golf distclean-extout
distclean-local:: clean-local
	@$(RM) $(MKFILES) yasmdata.rb *.inc
	@$(RM) config.cache config.status config.status.lineno $(PRELUDES)
	@$(RM) *~ *.bak *.stackdump core *.core gmon.out $(PREP)
distclean-ext:: PHONY
distclean-golf: clean-golf
	@$(RM) $(GOLFPRELUDES)
distclean-rdoc: PHONY
distclean-capi: PHONY
distclean-extout: clean-extout

realclean:: realclean-ext realclean-local realclean-enc realclean-golf realclean-extout
realclean-local:: distclean-local
	@$(RM) parse.c parse.h lex.c newline.c revision.h
realclean-ext::
realclean-golf: distclean-golf
realclean-capi: PHONY
realclean-extout: distclean-extout

clean-enc distclean-enc realclean-enc: PHONY

check: test test-all
check-ruby: test test-ruby

btest: miniruby$(EXEEXT) $(TEST_RUNNABLE)-btest
no-btest: PHONY
yes-btest: PHONY
	$(BOOTSTRAPRUBY) "$(srcdir)/bootstraptest/runner.rb" --ruby="$(MINIRUBY)" $(OPTS)

btest-ruby: miniruby$(EXEEXT) $(RBCONFIG) $(PROGRAM) $(TEST_RUNNABLE)-btest-ruby
no-btest-ruby: PHONY
yes-btest-ruby: PHONY
	@$(RUNRUBY) "$(srcdir)/bootstraptest/runner.rb" --ruby="$(PROGRAM) -I$(srcdir)/lib" -q $(OPTS)

test-sample: miniruby$(EXEEXT) $(RBCONFIG) $(PROGRAM) $(TEST_RUNNABLE)-test-sample
no-test-sample: PHONY
yes-test-sample: PHONY
	@$(RUNRUBY) $(srcdir)/tool/rubytest.rb

test-knownbugs: test-knownbug
test-knownbug: miniruby$(EXEEXT) $(PROGRAM) $(RBCONFIG) $(TEST_RUNNABLE)-test-knownbug
no-test-knownbug: PHONY
yes-test-knownbug: PHONY
	-$(RUNRUBY) "$(srcdir)/bootstraptest/runner.rb" --ruby="$(PROGRAM)" $(OPTS) $(srcdir)/KNOWNBUGS.rb

test: test-sample btest-ruby test-knownbug

test-all: $(TEST_RUNNABLE)-test-all
yes-test-all: PHONY
	$(RUNRUBY) "$(srcdir)/test/runner.rb" --ruby="$(RUNRUBY)" $(TESTS)
TESTS_BUILD = mkmf
no-test-all: PHONY
	$(MINIRUBY) -I"$(srcdir)/lib" "$(srcdir)/test/runner.rb" $(TESTS_BUILD)

test-ruby: $(TEST_RUNNABLE)-test-ruby
no-test-ruby: PHONY
yes-test-ruby: PHONY
	$(RUNRUBY) "$(srcdir)/test/runner.rb" ruby

extconf: $(PREP)
	$(Q) $(MAKEDIRS) "$(EXTCONFDIR)"
	$(RUNRUBY) -C "$(EXTCONFDIR)" $(EXTCONF) $(EXTCONFARGS)

$(RBCONFIG): $(srcdir)/tool/mkconfig.rb config.status $(srcdir)/version.h $(PREP)
	@$(MINIRUBY) $(srcdir)/tool/mkconfig.rb -timestamp=$@ \
		-install_name=$(RUBY_INSTALL_NAME) \
		-so_name=$(RUBY_SO_NAME) rbconfig.rb

test-rubyspec-precheck:

test-rubyspec: test-rubyspec-precheck
	$(RUNRUBY) $(srcdir)/spec/mspec/bin/mspec run -B $(srcdir)/spec/default.mspec $(MSPECOPT)

encs: enc trans
encs enc trans: showflags $(ENC_MK) $(LIBRUBY) $(PREP)
	$(ECHO) making $@
	$(Q) $(MAKE) -f $(ENC_MK) RUBY="$(MINIRUBY)" MINIRUBY="$(MINIRUBY)" $(MFLAGS) $@

enc: encdb.h
trans: transdb.h

$(ENC_MK): $(srcdir)/enc/make_encmake.rb $(srcdir)/enc/Makefile.in $(srcdir)/enc/depend \
	$(srcdir)/lib/mkmf.rb $(RBCONFIG)
	$(ECHO) generating $@
	$(Q) $(MINIRUBY) $(srcdir)/enc/make_encmake.rb --builtin-encs="$(BUILTIN_ENCOBJS)" --builtin-transes="$(BUILTIN_TRANSOBJS)" $@ $(ENCS)

.PRECIOUS: $(MKFILES)

.PHONY: PHONY all fake prereq incs srcs preludes help
.PHONY: test install install-nodoc install-doc dist
.PHONY: loadpath golf capi rdoc install-prereq clear-installed-list
.PHONY: clean clean-ext clean-local clean-enc clean-golf clean-rdoc clean-extout
.PHONY: distclean distclean-ext distclean-local distclean-enc distclean-golf distclean-extout
.PHONY: realclean realclean-ext realclean-local realclean-enc realclean-golf realclean-extout
.PHONY: check test test-all btest btest-ruby test-sample test-knownbug
.PHONY: run runruby parse benchmark benchmark-each tbench gdb gdb-ruby
.PHONY: update-mspec update-rubyspec test-rubyspec

PHONY:

parse.c: parse.y $(srcdir)/tool/ytab.sed
parse.h parse.h: parse.c

.y.c:
	$(YACC) -d $(YFLAGS) -o y.tab.c $(SRC_FILE)
	sed -f $(srcdir)/tool/ytab.sed -e "/^#/s!y\.tab\.c!$@!" y.tab.c > $@.new
	@$(MV) $@.new $@
	sed -e "/^#line.*y\.tab\.h/d;/^#line.*parse\.y/d" y.tab.h > $(@:.c=.h).new
	@$(IFCHANGE) $(@:.c=.h) $(@:.c=.h).new
	@$(RM) y.tab.c y.tab.h

acosh.$(OBJEXT): acosh.c
alloca.$(OBJEXT): alloca.c config.h
crypt.$(OBJEXT): crypt.c
dup2.$(OBJEXT): dup2.c
erf.$(OBJEXT): erf.c
finite.$(OBJEXT): finite.c
flock.$(OBJEXT): flock.c
memcmp.$(OBJEXT): memcmp.c
memmove.$(OBJEXT): memmove.c
mkdir.$(OBJEXT): mkdir.c
strchr.$(OBJEXT): strchr.c
strdup.$(OBJEXT): strdup.c
strerror.$(OBJEXT): strerror.c
strstr.$(OBJEXT): strstr.c
strtod.$(OBJEXT): strtod.c
strtol.$(OBJEXT): strtol.c
nt.$(OBJEXT): nt.c
os2.$(OBJEXT): os2.c
dl_os2.$(OBJEXT): dl_os2.c
ia64.$(OBJEXT): ia64.s
	$(CC) $(CFLAGS) -c $<

win32.$(OBJEXT): win32.c $(RUBY_H_INCLUDES)

###

RUBY_H_INCLUDES    = ruby.h config.h defines.h \
		     intern.h missing.h st.h \
		     subst.h
ENCODING_H_INCLUDES= encoding.h oniguruma.h
ID_H_INCLUDES      = id.h vm_opts.h
VM_CORE_H_INCLUDES = vm_core.h thread_$(THREAD_MODEL).h \
		     node.h method.h atomic.h \
		     $(ID_H_INCLUDES)

array.$(OBJEXT): array.c $(RUBY_H_INCLUDES) util.h \
  $(ENCODING_H_INCLUDES) internal.h
bignum.$(OBJEXT): bignum.c $(RUBY_H_INCLUDES) util.h \
  internal.h
class.$(OBJEXT): class.c $(RUBY_H_INCLUDES) \
  $(VM_CORE_H_INCLUDES) debug.h internal.h \
  constant.h
compar.$(OBJEXT): compar.c $(RUBY_H_INCLUDES)
complex.$(OBJEXT): complex.c $(RUBY_H_INCLUDES) \
  internal.h
dir.$(OBJEXT): dir.c $(RUBY_H_INCLUDES) util.h \
  $(ENCODING_H_INCLUDES) \
  internal.h
dln.$(OBJEXT): dln.c dln.h $(RUBY_H_INCLUDES)
dln_find.$(OBJEXT): dln_find.c dln.h $(RUBY_H_INCLUDES)
dmydln.$(OBJEXT): dmydln.c $(RUBY_H_INCLUDES)
dmyext.$(OBJEXT): dmyext.c
dmyencoding.$(OBJEXT): dmyencoding.c $(RUBY_H_INCLUDES) \
  regenc.h util.h $(ENCODING_H_INCLUDES) \
  encoding.c internal.h
encoding.$(OBJEXT): encoding.c $(RUBY_H_INCLUDES) \
  $(ENCODING_H_INCLUDES) regenc.h util.h \
  internal.h
enum.$(OBJEXT): enum.c $(RUBY_H_INCLUDES) node.h \
  util.h $(ID_H_INCLUDES)
enumerator.$(OBJEXT): enumerator.c $(RUBY_H_INCLUDES)
error.$(OBJEXT): error.c known_errors.inc \
  $(RUBY_H_INCLUDES) $(VM_CORE_H_INCLUDES) $(ENCODING_H_INCLUDES) \
  debug.h \
  internal.h
eval.$(OBJEXT): eval.c eval_intern.h vm.h \
  $(RUBY_H_INCLUDES) $(VM_CORE_H_INCLUDES) eval_error.c \
  eval_jump.c debug.h gc.h iseq.h \
  $(ENCODING_H_INCLUDES) internal.h
load.$(OBJEXT): load.c eval_intern.h \
  util.h $(RUBY_H_INCLUDES) $(VM_CORE_H_INCLUDES) \
  dln.h debug.h \
  internal.h
file.$(OBJEXT): file.c $(RUBY_H_INCLUDES) io.h \
  $(ENCODING_H_INCLUDES) util.h dln.h \
  internal.h
gc.$(OBJEXT): gc.c $(RUBY_H_INCLUDES) re.h \
  regex.h $(ENCODING_H_INCLUDES) $(VM_CORE_H_INCLUDES) \
  gc.h io.h eval_intern.h util.h \
  debug.h internal.h constant.h
hash.$(OBJEXT): hash.c $(RUBY_H_INCLUDES) util.h \
  $(ENCODING_H_INCLUDES)
inits.$(OBJEXT): inits.c $(RUBY_H_INCLUDES) \
  internal.h
io.$(OBJEXT): io.c $(RUBY_H_INCLUDES) io.h \
  util.h $(ENCODING_H_INCLUDES) dln.h internal.h
main.$(OBJEXT): main.c $(RUBY_H_INCLUDES) debug.h \
  node.h
marshal.$(OBJEXT): marshal.c $(RUBY_H_INCLUDES) io.h \
  $(ENCODING_H_INCLUDES) util.h internal.h
math.$(OBJEXT): math.c $(RUBY_H_INCLUDES) \
  internal.h
node.$(OBJEXT): node.c $(RUBY_H_INCLUDES) \
  $(VM_CORE_H_INCLUDES) debug.h
numeric.$(OBJEXT): numeric.c $(RUBY_H_INCLUDES) \
  util.h $(ENCODING_H_INCLUDES) internal.h
object.$(OBJEXT): object.c $(RUBY_H_INCLUDES) util.h \
  internal.h constant.h
pack.$(OBJEXT): pack.c $(RUBY_H_INCLUDES) encoding.h \
  oniguruma.h
parse.$(OBJEXT): parse.c $(RUBY_H_INCLUDES) node.h \
  $(ENCODING_H_INCLUDES) $(ID_H_INCLUDES) regenc.h \
  regex.h util.h lex.c \
  defs/keywords id.c parse.y \
  parse.h \
  internal.h
proc.$(OBJEXT): proc.c eval_intern.h \
  $(RUBY_H_INCLUDES) gc.h $(VM_CORE_H_INCLUDES) \
  debug.h internal.h iseq.h
process.$(OBJEXT): process.c $(RUBY_H_INCLUDES) \
  util.h io.h $(ENCODING_H_INCLUDES) dln.h \
  $(VM_CORE_H_INCLUDES) debug.h internal.h
random.$(OBJEXT): random.c $(RUBY_H_INCLUDES)
range.$(OBJEXT): range.c $(RUBY_H_INCLUDES) \
  $(ENCODING_H_INCLUDES) internal.h
rational.$(OBJEXT): rational.c $(RUBY_H_INCLUDES) internal.h
re.$(OBJEXT): re.c $(RUBY_H_INCLUDES) re.h \
  regex.h $(ENCODING_H_INCLUDES) util.h \
  regint.h regenc.h internal.h
regcomp.$(OBJEXT): regcomp.c regparse.h \
  regint.h regenc.h oniguruma.h \
  $(RUBY_H_INCLUDES)
regenc.$(OBJEXT): regenc.c regint.h \
  regenc.h oniguruma.h $(RUBY_H_INCLUDES)
regerror.$(OBJEXT): regerror.c regint.h \
  regenc.h oniguruma.h $(RUBY_H_INCLUDES)
regexec.$(OBJEXT): regexec.c regint.h \
  regenc.h oniguruma.h $(RUBY_H_INCLUDES)
regparse.$(OBJEXT): regparse.c regparse.h \
  regint.h regenc.h oniguruma.h \
  $(RUBY_H_INCLUDES)
regsyntax.$(OBJEXT): regsyntax.c regint.h \
  regenc.h oniguruma.h $(RUBY_H_INCLUDES)
ruby.$(OBJEXT): ruby.c $(RUBY_H_INCLUDES) util.h \
  $(ENCODING_H_INCLUDES) eval_intern.h $(VM_CORE_H_INCLUDES) \
  dln.h debug.h internal.h
safe.$(OBJEXT): safe.c $(RUBY_H_INCLUDES) \
  $(VM_CORE_H_INCLUDES) debug.h
signal.$(OBJEXT): signal.c $(RUBY_H_INCLUDES) \
  $(VM_CORE_H_INCLUDES) debug.h
sprintf.$(OBJEXT): sprintf.c $(RUBY_H_INCLUDES) re.h \
  regex.h vsnprintf.c $(ENCODING_H_INCLUDES)
st.$(OBJEXT): st.c $(RUBY_H_INCLUDES)
strftime.$(OBJEXT): strftime.c $(RUBY_H_INCLUDES) \
  timev.h
string.$(OBJEXT): string.c $(RUBY_H_INCLUDES) re.h \
  regex.h $(ENCODING_H_INCLUDES) internal.h
struct.$(OBJEXT): struct.c $(RUBY_H_INCLUDES) internal.h
thread.$(OBJEXT): thread.c eval_intern.h \
  $(RUBY_H_INCLUDES) gc.h $(VM_CORE_H_INCLUDES) \
  debug.h thread_$(THREAD_MODEL).c $(ENCODING_H_INCLUDES) \
  internal.h io.h
transcode.$(OBJEXT): transcode.c $(RUBY_H_INCLUDES) \
  $(ENCODING_H_INCLUDES) transcode_data.h internal.h
cont.$(OBJEXT): cont.c $(RUBY_H_INCLUDES) \
  $(VM_CORE_H_INCLUDES) gc.h eval_intern.h \
  debug.h internal.h
time.$(OBJEXT): time.c $(RUBY_H_INCLUDES) \
  $(ENCODING_H_INCLUDES) timev.h internal.h
util.$(OBJEXT): util.c $(RUBY_H_INCLUDES) util.h \
  internal.h
variable.$(OBJEXT): variable.c $(RUBY_H_INCLUDES) \
  node.h util.h encoding.h \
  oniguruma.h internal.h constant.h
version.$(OBJEXT): version.c $(RUBY_H_INCLUDES) \
  version.h $(srcdir)/version.h $(srcdir)/revision.h config.h
dmyversion.$(OBJEXT): dmyversion.c version.$(OBJEXT)

compile.$(OBJEXT): compile.c iseq.h \
  $(RUBY_H_INCLUDES) $(VM_CORE_H_INCLUDES) insns.inc \
  insns_info.inc optinsn.inc debug.h \
  optunifs.inc opt_sc.inc insns.inc \
  internal.h
iseq.$(OBJEXT): iseq.c gc.h iseq.h \
  $(RUBY_H_INCLUDES) $(VM_CORE_H_INCLUDES) insns.inc \
  insns_info.inc node_name.inc debug.h internal.h
vm.$(OBJEXT): vm.c gc.h iseq.h \
  eval_intern.h $(RUBY_H_INCLUDES) $(ENCODING_H_INCLUDES) \
  $(VM_CORE_H_INCLUDES) vm_method.c vm_eval.c \
  vm_insnhelper.c vm_insnhelper.h vm_exec.c \
  vm_exec.h insns.def vmtc.inc \
  vm.inc insns.inc debug.h \
  internal.h vm.h constant.h
vm_dump.$(OBJEXT): vm_dump.c $(RUBY_H_INCLUDES) \
  $(VM_CORE_H_INCLUDES) debug.h addr2line.h
debug.$(OBJEXT): debug.c $(RUBY_H_INCLUDES) \
  $(ENCODING_H_INCLUDES) $(VM_CORE_H_INCLUDES) eval_intern.h \
  util.h debug.h
id.$(OBJEXT): id.c $(RUBY_H_INCLUDES) $(ID_H_INCLUDES)
miniprelude.$(OBJEXT): miniprelude.c $(RUBY_H_INCLUDES) \
  $(VM_CORE_H_INCLUDES) debug.h internal.h
prelude.$(OBJEXT): prelude.c $(RUBY_H_INCLUDES) \
  $(VM_CORE_H_INCLUDES) debug.h internal.h
golf_prelude.$(OBJEXT): golf_prelude.c $(RUBY_H_INCLUDES) \
  $(VM_CORE_H_INCLUDES) debug.h internal.h
goruby.$(OBJEXT): goruby.c main.c $(RUBY_H_INCLUDES) \
  debug.h node.h

ascii.$(OBJEXT): ascii.c regenc.h config.h \
  oniguruma.h missing.h
us_ascii.$(OBJEXT): us_ascii.c regenc.h \
  config.h oniguruma.h missing.h
unicode.$(OBJEXT): unicode.c regint.h \
  config.h defines.h regenc.h \
  oniguruma.h st.h ruby.h \
  missing.h intern.h enc/unicode/name2ctype.h \
  subst.h

utf_8.$(OBJEXT): utf_8.c regenc.h config.h \
  oniguruma.h missing.h

newline.c: $(srcdir)/enc/trans/newline.trans $(srcdir)/tool/transcode-tblgen.rb
	$(Q) $(BASERUBY) "$(srcdir)/tool/transcode-tblgen.rb" -vo newline.c $(srcdir)/enc/trans/newline.trans
newline.$(OBJEXT): newline.c defines.h \
  intern.h missing.h st.h \
  transcode_data.h ruby.h config.h subst.h

$(OBJS):  config.h missing.h

INSNS2VMOPT = --srcdir="$(srcdir)"

minsns.inc: $(srcdir)/template/minsns.inc.tmpl

opt_sc.inc: $(srcdir)/template/opt_sc.inc.tmpl

optinsn.inc: $(srcdir)/template/optinsn.inc.tmpl

optunifs.inc: $(srcdir)/template/optunifs.inc.tmpl

insns.inc: $(srcdir)/template/insns.inc.tmpl

insns_info.inc: $(srcdir)/template/insns_info.inc.tmpl

vmtc.inc: $(srcdir)/template/vmtc.inc.tmpl

vm.inc: $(srcdir)/template/vm.inc.tmpl

srcs: parse.c lex.c newline.c srcs-ext srcs-enc

EXT_SRCS = $(srcdir)/ext/ripper/ripper.c $(srcdir)/ext/json/parser/parser.c

srcs-ext: $(EXT_SRCS)

srcs-enc: $(ENC_MK)
	$(ECHO) making srcs under enc
	$(Q) $(MAKE) -f $(ENC_MK) RUBY="$(MINIRUBY)" MINIRUBY="$(MINIRUBY)" $(MFLAGS) srcs

incs: $(INSNS) node_name.inc encdb.h transdb.h known_errors.inc \
      $(srcdir)/revision.h $(REVISION_H) enc/unicode/name2ctype.h

insns: $(INSNS)

id.h: parse.h $(srcdir)/tool/generic_erb.rb $(srcdir)/template/id.h.tmpl
	$(ECHO) generating $@
	$(Q) $(BASERUBY) $(srcdir)/tool/generic_erb.rb --output=$@ \
		$(srcdir)/template/id.h.tmpl --vpath=$(VPATH) parse.h

node_name.inc: node.h
	$(ECHO) generating $@
	$(Q) $(BASERUBY) -n $(srcdir)/tool/node_name.rb < $? > $@

encdb.h: $(PREP) $(srcdir)/tool/generic_erb.rb $(srcdir)/template/encdb.h.tmpl
	$(ECHO) generating $@
	$(Q) $(MINIRUBY) $(srcdir)/tool/generic_erb.rb -c -o $@ $(srcdir)/template/encdb.h.tmpl $(srcdir)/enc enc

transdb.h: $(PREP) srcs-enc $(srcdir)/tool/generic_erb.rb $(srcdir)/template/transdb.h.tmpl
	$(ECHO) generating $@
	$(Q) $(MINIRUBY) $(srcdir)/tool/generic_erb.rb -c -o $@ $(srcdir)/template/transdb.h.tmpl $(srcdir)/enc/trans enc/trans

known_errors.inc: $(srcdir)/template/known_errors.inc.tmpl $(srcdir)/defs/known_errors.def
	$(ECHO) generating $@
	$(Q) $(BASERUBY) $(srcdir)/tool/generic_erb.rb -c -o $@ $(srcdir)/template/known_errors.inc.tmpl $(srcdir)/defs/known_errors.def

miniprelude.c: $(srcdir)/tool/compile_prelude.rb $(srcdir)/prelude.rb
	$(ECHO) generating $@
	$(Q) $(BASERUBY) -I$(srcdir) $(srcdir)/tool/compile_prelude.rb $(srcdir)/prelude.rb $@

prelude.c: $(srcdir)/tool/compile_prelude.rb $(RBCONFIG) \
	   $(srcdir)/lib/rubygems/defaults.rb $(srcdir)/lib/rubygems/custom_require.rb \
	   $(PRELUDE_SCRIPTS) $(PREP)
	$(ECHO) generating $@
	$(Q) $(COMPILE_PRELUDE) $(PRELUDE_SCRIPTS) $@

golf_prelude.c: $(srcdir)/tool/compile_prelude.rb $(RBCONFIG) $(srcdir)/prelude.rb $(srcdir)/golf_prelude.rb $(PREP)
	$(ECHO) generating $@
	$(Q) $(COMPILE_PRELUDE) $(srcdir)/golf_prelude.rb $@

prereq: incs srcs preludes PHONY

preludes: miniprelude.c
preludes: golf_prelude.c

$(srcdir)/revision.h:
	@exit > $@

$(REVISION_H): $(srcdir)/version.h $(srcdir)/ChangeLog $(srcdir)/tool/file2lastrev.rb $(REVISION_FORCE)
	@-$(BASERUBY) $(srcdir)/tool/file2lastrev.rb --revision.h "$(srcdir)" > "$(srcdir)/revision.tmp"
	@$(IFCHANGE) "--timestamp=$@" "$(srcdir)/revision.h" "$(srcdir)/revision.tmp"

$(srcdir)/ext/ripper/ripper.c: parse.y
	$(ECHO) generating $@
	$(Q) $(CHDIR) $(@D) && $(exec) $(MAKE) -f depend $(MFLAGS) \
		Q=$(Q) ECHO=$(ECHO) top_srcdir=../.. srcdir=. RUBY=$(BASERUBY)

$(srcdir)/ext/json/parser/parser.c: $(srcdir)/ext/json/parser/parser.rl
	$(ECHO) generating $@
	$(Q) $(CHDIR) $(@D) && $(exec) $(MAKE) -f prereq.mk $(MFLAGS) \
		Q=$(Q) ECHO=$(ECHO) top_srcdir=../../.. srcdir=.

##

run: miniruby$(EXEEXT) PHONY
	$(MINIRUBY) $(TESTRUN_SCRIPT) $(RUNOPT)

runruby: $(PROGRAM) PHONY
	$(RUNRUBY) $(TESTRUN_SCRIPT)

parse: miniruby$(EXEEXT) PHONY
	$(MINIRUBY) $(srcdir)/tool/parse.rb $(TESTRUN_SCRIPT)

COMPARE_RUBY = $(BASERUBY)
ITEM = 
OPTS = 

benchmark: $(PROGRAM) PHONY
	$(BASERUBY) $(srcdir)/benchmark/driver.rb -v \
	            --executables="$(COMPARE_RUBY); $(RUNRUBY)" \
	            --pattern='bm_' --directory=$(srcdir)/benchmark $(OPTS)

benchmark-each: $(PROGRAM) PHONY
	$(BASERUBY) $(srcdir)/benchmark/driver.rb -v \
	            --executables="$(COMPARE_RUBY); $(RUNRUBY)" \
	            --pattern=$(ITEM) --directory=$(srcdir)/benchmark $(OPTS)

tbench: $(PROGRAM) PHONY
	$(BASERUBY) $(srcdir)/benchmark/driver.rb -v \
	            --executables="$(COMPARE_RUBY); $(RUNRUBY)" \
	            --pattern='bmx_' --directory=$(srcdir)/benchmark $(OPTS)

run.gdb:
	echo b ruby_debug_breakpoint           > run.gdb
	echo '# handle SIGINT nostop'         >> run.gdb
	echo '# handle SIGPIPE nostop'        >> run.gdb
	echo '# b rb_longjmp'                 >> run.gdb
	echo source $(srcdir)/breakpoints.gdb >> run.gdb
	echo source $(srcdir)/.gdbinit        >> run.gdb
	echo 'set $$_exitcode = -999'         >> run.gdb
	echo run                              >> run.gdb
	echo 'if $$_exitcode != -999'         >> run.gdb
	echo '  quit'                         >> run.gdb
	echo end                              >> run.gdb


gdb: miniruby$(EXEEXT) run.gdb PHONY
	gdb -x run.gdb --quiet --args $(MINIRUBY) $(TESTRUN_SCRIPT)

gdb-ruby: $(PROGRAM) run.gdb PHONY
	gdb -x run.gdb --quiet --args $(PROGRAM) $(TESTRUN_SCRIPT)

dist:
	$(BASERUBY) $(srcdir)/tool/make-snapshot tmp $(RELNAME)

up::
	-@$(MAKE) $(MFLAGS) REVISION_FORCE=PHONY "$(REVISION_H)"

info: info-program info-libruby_a info-libruby_so info-arch
info-program:
	@echo PROGRAM=$(PROGRAM)
info-libruby_a:
	@echo LIBRUBY_A=$(LIBRUBY_A)
info-libruby_so:
	@echo LIBRUBY_SO=$(LIBRUBY_SO)
info-arch:
	@echo arch=$(arch)

change: PHONY
	$(BASERUBY) -C "$(srcdir)" ./tool/change_maker.rb $(CHANGES) > change.log

love: sudo-precheck up all test install test-all
	@echo love is all you need

sudo-precheck:
	@$(SUDO) echo > $(NULL)

help: PHONY
	$(MESSAGE_BEGIN) \
	"                Makefile of Ruby" \
	"" \
	"targets:" \
	"  all (default):   builds all of below" \
	"  miniruby:        builds only miniruby" \
	"  encs:            builds encodings" \
	"  exts:            builds extensions" \
	"  main:            builds encodings, extensions and ruby" \
	"  docs:            builds documents" \
	"  run:             runs test.rb by miniruby" \
	"  runruby:         runs test.rb by ruby you just built" \
	"  gdb:             runs test.rb by miniruby under gdb" \
	"  gdb-ruby:        runs test.rb by ruby under gdb" \
	"  check:           equals make test test-all" \
	"  test:            ruby core tests" \
	"  test-all:        all ruby tests" \
	"  test-rubyspec:   run RubySpec test suite" \
	"  update-rubyspec: update local copy of RubySpec" \
	"  benchmark:       benchmark this ruby and COMPARE_RUBY" \
	"  install:         install all ruby distributions" \
	"  install-nodoc:   install without rdoc" \
	"  install-cross:   install cross compiling staff" \
	"  clean:           clean for tarball" \
	"  distclean:       clean for repository" \
	"  change:          make change log template" \
	"  golf:            for golfers" \
	"" \
	"see DeveloperHowto for more detail: " \
	"  http://redmine.ruby-lang.org/wiki/ruby/DeveloperHowto" \
	$(MESSAGE_END)
