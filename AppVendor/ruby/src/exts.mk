V = 0
Q1 = $(V:1=)
Q = $(Q1:0=@)
ECHO1 = $(V:1=@:)
ECHO = $(ECHO1:0=@echo)

extensions = ext/curses/. ext/openssl/. ext/readline/. ext/zlib/. \
	     ext/psych/. ext/-test-/add_suffix/. \
	     ext/-test-/array/resize/. ext/-test-/bug-3571/. \
	     ext/-test-/bug-3662/. ext/-test-/funcall/. \
	     ext/-test-/load/dot.dot/. ext/-test-/old_thread_select/. \
	     ext/-test-/st/numhash/. ext/-test-/string/. \
	     ext/-test-/wait_for_single_fd/. ext/-test-/win32/dln/. \
	     ext/bigdecimal/. ext/continuation/. ext/coverage/. \
	     ext/date/. ext/dbm/. ext/digest/. \
	     ext/digest/bubblebabble/. ext/digest/md5/. \
	     ext/digest/rmd160/. ext/digest/sha1/. ext/digest/sha2/. \
	     ext/dl/. ext/dl/callback/. ext/dl/win32/. ext/etc/. \
	     ext/fcntl/. ext/fiber/. ext/fiddle/. ext/gdbm/. \
	     ext/iconv/. ext/io/console/. ext/io/nonblock/. \
	     ext/io/wait/. ext/json/. ext/json/generator/. \
	     ext/json/parser/. ext/mathn/complex/. ext/mathn/rational/. \
	     ext/nkf/. ext/objspace/. ext/pathname/. ext/pty/. \
	     ext/racc/cparse/. ext/ripper/. ext/sdbm/. ext/socket/. \
	     ext/stringio/. ext/strscan/. ext/syck/. ext/syslog/. \
	     ext/tk/. ext/tk/tkutil/. ext/win32ole/.
all: $(extensions:/.=/all)
install: $(extensions:/.=/install)
static: $(extensions:/.=/static)
install-so: $(extensions:/.=/install-so)
install-rb: $(extensions:/.=/install-rb)
clean: $(extensions:/.=/clean)
distclean: $(extensions:/.=/distclean)
realclean: $(extensions:/.=/realclean)

all: ruby
ruby: $(extensions:/.=/all)
ruby:
	$(Q)$(MAKE) $(MFLAGS) $@

ext/curses/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/openssl/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/readline/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/zlib/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/psych/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/add_suffix/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/array/resize/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/bug-3571/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/bug-3662/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/funcall/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/load/dot.dot/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/old_thread_select/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/st/numhash/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/string/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/wait_for_single_fd/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/win32/dln/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/bigdecimal/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/continuation/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/coverage/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/date/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dbm/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/bubblebabble/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/md5/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/rmd160/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/sha1/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/sha2/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/callback/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/win32/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/etc/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fcntl/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fiber/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fiddle/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/gdbm/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/iconv/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/console/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/nonblock/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/wait/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/generator/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/parser/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/mathn/complex/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/mathn/rational/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/nkf/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/objspace/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/pathname/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/pty/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/racc/cparse/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/ripper/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/sdbm/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/socket/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/stringio/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/strscan/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/syck/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/syslog/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/tk/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/tk/tkutil/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/win32ole/all:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/curses/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/openssl/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/readline/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/zlib/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/psych/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/add_suffix/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/array/resize/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/bug-3571/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/bug-3662/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/funcall/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/load/dot.dot/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/old_thread_select/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/st/numhash/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/string/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/wait_for_single_fd/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/win32/dln/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/bigdecimal/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/continuation/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/coverage/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/date/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dbm/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/bubblebabble/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/md5/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/rmd160/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/sha1/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/sha2/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/callback/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/win32/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/etc/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fcntl/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fiber/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fiddle/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/gdbm/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/iconv/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/console/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/nonblock/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/wait/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/generator/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/parser/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/mathn/complex/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/mathn/rational/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/nkf/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/objspace/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/pathname/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/pty/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/racc/cparse/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/ripper/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/sdbm/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/socket/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/stringio/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/strscan/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/syck/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/syslog/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/tk/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/tk/tkutil/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/win32ole/install:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/curses/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/openssl/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/readline/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/zlib/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/psych/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/add_suffix/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/array/resize/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/bug-3571/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/bug-3662/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/funcall/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/load/dot.dot/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/old_thread_select/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/st/numhash/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/string/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/wait_for_single_fd/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/win32/dln/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/bigdecimal/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/continuation/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/coverage/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/date/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dbm/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/bubblebabble/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/md5/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/rmd160/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/sha1/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/sha2/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/callback/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/win32/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/etc/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fcntl/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fiber/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fiddle/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/gdbm/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/iconv/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/console/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/nonblock/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/wait/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/generator/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/parser/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/mathn/complex/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/mathn/rational/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/nkf/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/objspace/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/pathname/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/pty/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/racc/cparse/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/ripper/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/sdbm/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/socket/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/stringio/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/strscan/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/syck/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/syslog/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/tk/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/tk/tkutil/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/win32ole/static:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/curses/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/openssl/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/readline/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/zlib/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/psych/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/add_suffix/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/array/resize/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/bug-3571/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/bug-3662/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/funcall/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/load/dot.dot/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/old_thread_select/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/st/numhash/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/string/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/wait_for_single_fd/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/win32/dln/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/bigdecimal/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/continuation/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/coverage/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/date/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dbm/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/bubblebabble/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/md5/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/rmd160/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/sha1/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/sha2/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/callback/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/win32/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/etc/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fcntl/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fiber/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fiddle/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/gdbm/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/iconv/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/console/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/nonblock/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/wait/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/generator/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/parser/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/mathn/complex/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/mathn/rational/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/nkf/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/objspace/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/pathname/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/pty/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/racc/cparse/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/ripper/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/sdbm/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/socket/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/stringio/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/strscan/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/syck/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/syslog/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/tk/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/tk/tkutil/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/win32ole/install-so:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/curses/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/openssl/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/readline/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/zlib/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/psych/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/add_suffix/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/array/resize/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/bug-3571/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/bug-3662/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/funcall/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/load/dot.dot/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/old_thread_select/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/st/numhash/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/string/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/wait_for_single_fd/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/win32/dln/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/bigdecimal/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/continuation/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/coverage/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/date/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dbm/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/bubblebabble/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/md5/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/rmd160/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/sha1/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/sha2/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/callback/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/win32/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/etc/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fcntl/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fiber/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fiddle/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/gdbm/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/iconv/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/console/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/nonblock/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/wait/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/generator/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/parser/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/mathn/complex/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/mathn/rational/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/nkf/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/objspace/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/pathname/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/pty/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/racc/cparse/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/ripper/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/sdbm/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/socket/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/stringio/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/strscan/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/syck/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/syslog/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/tk/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/tk/tkutil/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/win32ole/install-rb:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/curses/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/openssl/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/readline/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/zlib/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/psych/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/add_suffix/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/array/resize/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/bug-3571/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/bug-3662/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/funcall/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/load/dot.dot/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/old_thread_select/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/st/numhash/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/string/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/wait_for_single_fd/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/win32/dln/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/bigdecimal/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/continuation/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/coverage/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/date/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dbm/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/bubblebabble/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/md5/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/rmd160/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/sha1/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/sha2/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/callback/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/win32/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/etc/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fcntl/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fiber/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fiddle/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/gdbm/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/iconv/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/console/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/nonblock/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/wait/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/generator/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/parser/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/mathn/complex/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/mathn/rational/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/nkf/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/objspace/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/pathname/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/pty/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/racc/cparse/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/ripper/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/sdbm/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/socket/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/stringio/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/strscan/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/syck/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/syslog/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/tk/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/tk/tkutil/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/win32ole/clean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/curses/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/openssl/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/readline/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/zlib/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/psych/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/add_suffix/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/array/resize/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/bug-3571/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/bug-3662/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/funcall/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/load/dot.dot/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/old_thread_select/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/st/numhash/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/string/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/wait_for_single_fd/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/win32/dln/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/bigdecimal/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/continuation/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/coverage/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/date/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dbm/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/bubblebabble/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/md5/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/rmd160/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/sha1/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/sha2/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/callback/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/win32/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/etc/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fcntl/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fiber/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fiddle/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/gdbm/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/iconv/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/console/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/nonblock/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/wait/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/generator/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/parser/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/mathn/complex/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/mathn/rational/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/nkf/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/objspace/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/pathname/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/pty/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/racc/cparse/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/ripper/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/sdbm/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/socket/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/stringio/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/strscan/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/syck/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/syslog/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/tk/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/tk/tkutil/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/win32ole/distclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/curses/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/openssl/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/readline/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/zlib/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/psych/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/add_suffix/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/array/resize/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/bug-3571/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/bug-3662/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/funcall/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/load/dot.dot/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/old_thread_select/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/st/numhash/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/string/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/wait_for_single_fd/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/-test-/win32/dln/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/bigdecimal/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/continuation/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/coverage/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/date/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dbm/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/bubblebabble/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/md5/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/rmd160/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/sha1/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/digest/sha2/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/callback/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/dl/win32/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/etc/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fcntl/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fiber/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/fiddle/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/gdbm/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/iconv/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/console/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/nonblock/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/io/wait/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/generator/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/json/parser/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/mathn/complex/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/mathn/rational/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/nkf/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/objspace/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/pathname/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/pty/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/racc/cparse/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/ripper/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/sdbm/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/socket/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/stringio/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/strscan/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/syck/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/syslog/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/tk/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/tk/tkutil/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
ext/win32ole/realclean:
	$(Q)cd $(@D) && exec $(MAKE) $(MFLAGS) $(@F)
