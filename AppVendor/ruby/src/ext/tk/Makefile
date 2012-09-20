
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
srcdir = $(top_srcdir)/ext/tk
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
INCFLAGS = -I. -I$(arch_hdrdir) -I$(hdrdir) -I$(srcdir) -I/System/Library/Frameworks/Tcl.framework/Versions/8.5/Headers -I/System/Library/Frameworks/Tk.framework/Versions/8.5/Headers
DEFS     = 
CPPFLAGS = -DRUBY_EXTCONF_H=\"$(RUBY_EXTCONF_H)\" -D_XOPEN_SOURCE -D_DARWIN_C_SOURCE $(DEFS) $(cppflags) -DWITH_TCL_ENABLE_THREAD=1
CXXFLAGS = $(CFLAGS) $(cxxflags)
ldflags  = -L. -Bstatic -L/Users/fabio/.sm/pkg/active/lib -L/usr/local/lib   -lpthread -framework CoreFoundation  -F/System/Library/Frameworks -framework Tcl    -lpthread -framework CoreFoundation -framework Cocoa -framework Carbon -framework IOKit   -lpthread -framework CoreFoundation  -F/System/Library/Frameworks -framework Tk
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

libpath = . $(topdir) /System/Library/Frameworks/Tcl.framework /System/Library/Frameworks/Tk.framework
LIBPATH =  -L. -L$(topdir) -L/System/Library/Frameworks/Tcl.framework -L/System/Library/Frameworks/Tk.framework
DEFFILE = 

CLEANFILES = mkmf.log config_list $(RUBYLIBDIR)/lib/tkextlib/SUPPORT_STATUS
DISTCLEANFILES = 
DISTCLEANDIRS = $(RUBYLIBDIR)

extout = $(topdir)/.ext
extout_prefix = $(extout)$(target_prefix)/
target_prefix = 
LOCAL_LIBS = 
LIBS =  -lm -ldl  -lpthread -ldl -lobjc 
SRCS = stubs.c tcltklib.c
OBJS = stubs.o tcltklib.o
TARGET = tcltklib
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
pre-install-rb-default: $(RUBYLIBDIR)
install-rb-default: $(RUBYLIBDIR)/multi-tk.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/multi-tk.rb: $(srcdir)/lib/multi-tk.rb
	$(Q) $(COPY) $(srcdir)/lib/multi-tk.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/multi-tk.rb
install-rb-default: $(RUBYLIBDIR)/remote-tk.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/remote-tk.rb: $(srcdir)/lib/remote-tk.rb
	$(Q) $(COPY) $(srcdir)/lib/remote-tk.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/remote-tk.rb
install-rb-default: $(RUBYLIBDIR)/tcltk.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/tcltk.rb: $(srcdir)/lib/tcltk.rb
	$(Q) $(COPY) $(srcdir)/lib/tcltk.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tcltk.rb
install-rb-default: $(RUBYLIBDIR)/tk.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/tk.rb: $(srcdir)/lib/tk.rb
	$(Q) $(COPY) $(srcdir)/lib/tk.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk.rb
install-rb-default: $(RUBYLIBDIR)/tkafter.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/tkafter.rb: $(srcdir)/lib/tkafter.rb
	$(Q) $(COPY) $(srcdir)/lib/tkafter.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkafter.rb
install-rb-default: $(RUBYLIBDIR)/tkbgerror.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/tkbgerror.rb: $(srcdir)/lib/tkbgerror.rb
	$(Q) $(COPY) $(srcdir)/lib/tkbgerror.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkbgerror.rb
install-rb-default: $(RUBYLIBDIR)/tkcanvas.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/tkcanvas.rb: $(srcdir)/lib/tkcanvas.rb
	$(Q) $(COPY) $(srcdir)/lib/tkcanvas.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkcanvas.rb
install-rb-default: $(RUBYLIBDIR)/tkclass.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/tkclass.rb: $(srcdir)/lib/tkclass.rb
	$(Q) $(COPY) $(srcdir)/lib/tkclass.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkclass.rb
install-rb-default: $(RUBYLIBDIR)/tkconsole.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/tkconsole.rb: $(srcdir)/lib/tkconsole.rb
	$(Q) $(COPY) $(srcdir)/lib/tkconsole.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkconsole.rb
install-rb-default: $(RUBYLIBDIR)/tkdialog.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/tkdialog.rb: $(srcdir)/lib/tkdialog.rb
	$(Q) $(COPY) $(srcdir)/lib/tkdialog.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkdialog.rb
install-rb-default: $(RUBYLIBDIR)/tkentry.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/tkentry.rb: $(srcdir)/lib/tkentry.rb
	$(Q) $(COPY) $(srcdir)/lib/tkentry.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkentry.rb
install-rb-default: $(RUBYLIBDIR)/tkfont.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/tkfont.rb: $(srcdir)/lib/tkfont.rb
	$(Q) $(COPY) $(srcdir)/lib/tkfont.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkfont.rb
install-rb-default: $(RUBYLIBDIR)/tkmacpkg.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/tkmacpkg.rb: $(srcdir)/lib/tkmacpkg.rb
	$(Q) $(COPY) $(srcdir)/lib/tkmacpkg.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkmacpkg.rb
install-rb-default: $(RUBYLIBDIR)/tkmenubar.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/tkmenubar.rb: $(srcdir)/lib/tkmenubar.rb
	$(Q) $(COPY) $(srcdir)/lib/tkmenubar.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkmenubar.rb
install-rb-default: $(RUBYLIBDIR)/tkmngfocus.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/tkmngfocus.rb: $(srcdir)/lib/tkmngfocus.rb
	$(Q) $(COPY) $(srcdir)/lib/tkmngfocus.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkmngfocus.rb
install-rb-default: $(RUBYLIBDIR)/tkpalette.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/tkpalette.rb: $(srcdir)/lib/tkpalette.rb
	$(Q) $(COPY) $(srcdir)/lib/tkpalette.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkpalette.rb
install-rb-default: $(RUBYLIBDIR)/tkscrollbox.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/tkscrollbox.rb: $(srcdir)/lib/tkscrollbox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkscrollbox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkscrollbox.rb
install-rb-default: $(RUBYLIBDIR)/tktext.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/tktext.rb: $(srcdir)/lib/tktext.rb
	$(Q) $(COPY) $(srcdir)/lib/tktext.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tktext.rb
install-rb-default: $(RUBYLIBDIR)/tkvirtevent.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/tkvirtevent.rb: $(srcdir)/lib/tkvirtevent.rb
	$(Q) $(COPY) $(srcdir)/lib/tkvirtevent.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkvirtevent.rb
install-rb-default: $(RUBYLIBDIR)/tkwinpkg.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/tkwinpkg.rb: $(srcdir)/lib/tkwinpkg.rb
	$(Q) $(COPY) $(srcdir)/lib/tkwinpkg.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkwinpkg.rb
pre-install-rb-default: $(RUBYLIBDIR)/tk
install-rb-default: $(RUBYLIBDIR)/tk/after.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/after.rb: $(srcdir)/lib/tk/after.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/after.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/after.rb
install-rb-default: $(RUBYLIBDIR)/tk/autoload.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/autoload.rb: $(srcdir)/lib/tk/autoload.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/autoload.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/autoload.rb
install-rb-default: $(RUBYLIBDIR)/tk/bgerror.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/bgerror.rb: $(srcdir)/lib/tk/bgerror.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/bgerror.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/bgerror.rb
install-rb-default: $(RUBYLIBDIR)/tk/bindtag.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/bindtag.rb: $(srcdir)/lib/tk/bindtag.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/bindtag.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/bindtag.rb
install-rb-default: $(RUBYLIBDIR)/tk/busy.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/busy.rb: $(srcdir)/lib/tk/busy.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/busy.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/busy.rb
install-rb-default: $(RUBYLIBDIR)/tk/button.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/button.rb: $(srcdir)/lib/tk/button.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/button.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/button.rb
install-rb-default: $(RUBYLIBDIR)/tk/canvas.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/canvas.rb: $(srcdir)/lib/tk/canvas.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/canvas.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/canvas.rb
install-rb-default: $(RUBYLIBDIR)/tk/canvastag.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/canvastag.rb: $(srcdir)/lib/tk/canvastag.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/canvastag.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/canvastag.rb
install-rb-default: $(RUBYLIBDIR)/tk/checkbutton.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/checkbutton.rb: $(srcdir)/lib/tk/checkbutton.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/checkbutton.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/checkbutton.rb
install-rb-default: $(RUBYLIBDIR)/tk/clipboard.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/clipboard.rb: $(srcdir)/lib/tk/clipboard.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/clipboard.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/clipboard.rb
install-rb-default: $(RUBYLIBDIR)/tk/clock.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/clock.rb: $(srcdir)/lib/tk/clock.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/clock.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/clock.rb
install-rb-default: $(RUBYLIBDIR)/tk/composite.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/composite.rb: $(srcdir)/lib/tk/composite.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/composite.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/composite.rb
install-rb-default: $(RUBYLIBDIR)/tk/console.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/console.rb: $(srcdir)/lib/tk/console.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/console.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/console.rb
install-rb-default: $(RUBYLIBDIR)/tk/dialog.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/dialog.rb: $(srcdir)/lib/tk/dialog.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/dialog.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/dialog.rb
install-rb-default: $(RUBYLIBDIR)/tk/encodedstr.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/encodedstr.rb: $(srcdir)/lib/tk/encodedstr.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/encodedstr.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/encodedstr.rb
install-rb-default: $(RUBYLIBDIR)/tk/entry.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/entry.rb: $(srcdir)/lib/tk/entry.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/entry.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/entry.rb
install-rb-default: $(RUBYLIBDIR)/tk/event.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/event.rb: $(srcdir)/lib/tk/event.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/event.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/event.rb
install-rb-default: $(RUBYLIBDIR)/tk/font.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/font.rb: $(srcdir)/lib/tk/font.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/font.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/font.rb
install-rb-default: $(RUBYLIBDIR)/tk/fontchooser.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/fontchooser.rb: $(srcdir)/lib/tk/fontchooser.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/fontchooser.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/fontchooser.rb
install-rb-default: $(RUBYLIBDIR)/tk/frame.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/frame.rb: $(srcdir)/lib/tk/frame.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/frame.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/frame.rb
install-rb-default: $(RUBYLIBDIR)/tk/grid.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/grid.rb: $(srcdir)/lib/tk/grid.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/grid.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/grid.rb
install-rb-default: $(RUBYLIBDIR)/tk/image.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/image.rb: $(srcdir)/lib/tk/image.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/image.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/image.rb
install-rb-default: $(RUBYLIBDIR)/tk/itemconfig.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/itemconfig.rb: $(srcdir)/lib/tk/itemconfig.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/itemconfig.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/itemconfig.rb
install-rb-default: $(RUBYLIBDIR)/tk/itemfont.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/itemfont.rb: $(srcdir)/lib/tk/itemfont.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/itemfont.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/itemfont.rb
install-rb-default: $(RUBYLIBDIR)/tk/kinput.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/kinput.rb: $(srcdir)/lib/tk/kinput.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/kinput.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/kinput.rb
install-rb-default: $(RUBYLIBDIR)/tk/label.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/label.rb: $(srcdir)/lib/tk/label.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/label.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/label.rb
install-rb-default: $(RUBYLIBDIR)/tk/labelframe.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/labelframe.rb: $(srcdir)/lib/tk/labelframe.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/labelframe.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/labelframe.rb
install-rb-default: $(RUBYLIBDIR)/tk/listbox.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/listbox.rb: $(srcdir)/lib/tk/listbox.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/listbox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/listbox.rb
install-rb-default: $(RUBYLIBDIR)/tk/macpkg.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/macpkg.rb: $(srcdir)/lib/tk/macpkg.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/macpkg.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/macpkg.rb
install-rb-default: $(RUBYLIBDIR)/tk/menu.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/menu.rb: $(srcdir)/lib/tk/menu.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/menu.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/menu.rb
install-rb-default: $(RUBYLIBDIR)/tk/menubar.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/menubar.rb: $(srcdir)/lib/tk/menubar.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/menubar.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/menubar.rb
install-rb-default: $(RUBYLIBDIR)/tk/menuspec.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/menuspec.rb: $(srcdir)/lib/tk/menuspec.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/menuspec.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/menuspec.rb
install-rb-default: $(RUBYLIBDIR)/tk/message.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/message.rb: $(srcdir)/lib/tk/message.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/message.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/message.rb
install-rb-default: $(RUBYLIBDIR)/tk/mngfocus.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/mngfocus.rb: $(srcdir)/lib/tk/mngfocus.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/mngfocus.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/mngfocus.rb
install-rb-default: $(RUBYLIBDIR)/tk/msgcat.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/msgcat.rb: $(srcdir)/lib/tk/msgcat.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/msgcat.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/msgcat.rb
install-rb-default: $(RUBYLIBDIR)/tk/namespace.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/namespace.rb: $(srcdir)/lib/tk/namespace.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/namespace.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/namespace.rb
install-rb-default: $(RUBYLIBDIR)/tk/optiondb.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/optiondb.rb: $(srcdir)/lib/tk/optiondb.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/optiondb.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/optiondb.rb
install-rb-default: $(RUBYLIBDIR)/tk/optionobj.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/optionobj.rb: $(srcdir)/lib/tk/optionobj.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/optionobj.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/optionobj.rb
install-rb-default: $(RUBYLIBDIR)/tk/pack.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/pack.rb: $(srcdir)/lib/tk/pack.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/pack.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/pack.rb
install-rb-default: $(RUBYLIBDIR)/tk/package.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/package.rb: $(srcdir)/lib/tk/package.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/package.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/package.rb
install-rb-default: $(RUBYLIBDIR)/tk/palette.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/palette.rb: $(srcdir)/lib/tk/palette.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/palette.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/palette.rb
install-rb-default: $(RUBYLIBDIR)/tk/panedwindow.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/panedwindow.rb: $(srcdir)/lib/tk/panedwindow.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/panedwindow.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/panedwindow.rb
install-rb-default: $(RUBYLIBDIR)/tk/place.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/place.rb: $(srcdir)/lib/tk/place.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/place.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/place.rb
install-rb-default: $(RUBYLIBDIR)/tk/radiobutton.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/radiobutton.rb: $(srcdir)/lib/tk/radiobutton.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/radiobutton.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/radiobutton.rb
install-rb-default: $(RUBYLIBDIR)/tk/root.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/root.rb: $(srcdir)/lib/tk/root.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/root.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/root.rb
install-rb-default: $(RUBYLIBDIR)/tk/scale.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/scale.rb: $(srcdir)/lib/tk/scale.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/scale.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/scale.rb
install-rb-default: $(RUBYLIBDIR)/tk/scrollable.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/scrollable.rb: $(srcdir)/lib/tk/scrollable.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/scrollable.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/scrollable.rb
install-rb-default: $(RUBYLIBDIR)/tk/scrollbar.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/scrollbar.rb: $(srcdir)/lib/tk/scrollbar.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/scrollbar.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/scrollbar.rb
install-rb-default: $(RUBYLIBDIR)/tk/scrollbox.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/scrollbox.rb: $(srcdir)/lib/tk/scrollbox.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/scrollbox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/scrollbox.rb
install-rb-default: $(RUBYLIBDIR)/tk/selection.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/selection.rb: $(srcdir)/lib/tk/selection.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/selection.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/selection.rb
install-rb-default: $(RUBYLIBDIR)/tk/spinbox.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/spinbox.rb: $(srcdir)/lib/tk/spinbox.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/spinbox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/spinbox.rb
install-rb-default: $(RUBYLIBDIR)/tk/tagfont.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/tagfont.rb: $(srcdir)/lib/tk/tagfont.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/tagfont.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/tagfont.rb
install-rb-default: $(RUBYLIBDIR)/tk/text.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/text.rb: $(srcdir)/lib/tk/text.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/text.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/text.rb
install-rb-default: $(RUBYLIBDIR)/tk/textimage.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/textimage.rb: $(srcdir)/lib/tk/textimage.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/textimage.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/textimage.rb
install-rb-default: $(RUBYLIBDIR)/tk/textmark.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/textmark.rb: $(srcdir)/lib/tk/textmark.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/textmark.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/textmark.rb
install-rb-default: $(RUBYLIBDIR)/tk/texttag.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/texttag.rb: $(srcdir)/lib/tk/texttag.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/texttag.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/texttag.rb
install-rb-default: $(RUBYLIBDIR)/tk/textwindow.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/textwindow.rb: $(srcdir)/lib/tk/textwindow.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/textwindow.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/textwindow.rb
install-rb-default: $(RUBYLIBDIR)/tk/timer.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/timer.rb: $(srcdir)/lib/tk/timer.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/timer.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/timer.rb
install-rb-default: $(RUBYLIBDIR)/tk/toplevel.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/toplevel.rb: $(srcdir)/lib/tk/toplevel.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/toplevel.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/toplevel.rb
install-rb-default: $(RUBYLIBDIR)/tk/ttk_selector.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/ttk_selector.rb: $(srcdir)/lib/tk/ttk_selector.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/ttk_selector.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/ttk_selector.rb
install-rb-default: $(RUBYLIBDIR)/tk/txtwin_abst.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/txtwin_abst.rb: $(srcdir)/lib/tk/txtwin_abst.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/txtwin_abst.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/txtwin_abst.rb
install-rb-default: $(RUBYLIBDIR)/tk/validation.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/validation.rb: $(srcdir)/lib/tk/validation.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/validation.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/validation.rb
install-rb-default: $(RUBYLIBDIR)/tk/variable.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/variable.rb: $(srcdir)/lib/tk/variable.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/variable.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/variable.rb
install-rb-default: $(RUBYLIBDIR)/tk/virtevent.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/virtevent.rb: $(srcdir)/lib/tk/virtevent.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/virtevent.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/virtevent.rb
install-rb-default: $(RUBYLIBDIR)/tk/winfo.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/winfo.rb: $(srcdir)/lib/tk/winfo.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/winfo.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/winfo.rb
install-rb-default: $(RUBYLIBDIR)/tk/winpkg.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/winpkg.rb: $(srcdir)/lib/tk/winpkg.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/winpkg.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/winpkg.rb
install-rb-default: $(RUBYLIBDIR)/tk/wm.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/wm.rb: $(srcdir)/lib/tk/wm.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/wm.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/wm.rb
install-rb-default: $(RUBYLIBDIR)/tk/xim.rb $(RUBYLIBDIR)/tk
$(RUBYLIBDIR)/tk/xim.rb: $(srcdir)/lib/tk/xim.rb
	$(Q) $(COPY) $(srcdir)/lib/tk/xim.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tk/xim.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/blt
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/barchart.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/barchart.rb: $(srcdir)/lib/tkextlib/blt/barchart.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/barchart.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/barchart.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/bitmap.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/bitmap.rb: $(srcdir)/lib/tkextlib/blt/bitmap.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/bitmap.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/bitmap.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/busy.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/busy.rb: $(srcdir)/lib/tkextlib/blt/busy.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/busy.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/busy.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/component.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/component.rb: $(srcdir)/lib/tkextlib/blt/component.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/component.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/component.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/container.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/container.rb: $(srcdir)/lib/tkextlib/blt/container.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/container.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/container.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/cutbuffer.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/cutbuffer.rb: $(srcdir)/lib/tkextlib/blt/cutbuffer.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/cutbuffer.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/cutbuffer.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/dragdrop.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/dragdrop.rb: $(srcdir)/lib/tkextlib/blt/dragdrop.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/dragdrop.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/dragdrop.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/eps.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/eps.rb: $(srcdir)/lib/tkextlib/blt/eps.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/eps.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/eps.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/graph.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/graph.rb: $(srcdir)/lib/tkextlib/blt/graph.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/graph.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/graph.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/htext.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/htext.rb: $(srcdir)/lib/tkextlib/blt/htext.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/htext.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/htext.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/setup.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/setup.rb: $(srcdir)/lib/tkextlib/blt/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/setup.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/spline.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/spline.rb: $(srcdir)/lib/tkextlib/blt/spline.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/spline.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/spline.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/stripchart.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/stripchart.rb: $(srcdir)/lib/tkextlib/blt/stripchart.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/stripchart.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/stripchart.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/table.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/table.rb: $(srcdir)/lib/tkextlib/blt/table.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/table.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/table.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/tabnotebook.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/tabnotebook.rb: $(srcdir)/lib/tkextlib/blt/tabnotebook.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/tabnotebook.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/tabnotebook.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/tabset.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/tabset.rb: $(srcdir)/lib/tkextlib/blt/tabset.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/tabset.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/tabset.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/ted.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/ted.rb: $(srcdir)/lib/tkextlib/blt/ted.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/ted.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/ted.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/tile.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/tile.rb: $(srcdir)/lib/tkextlib/blt/tile.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/tile.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/tile.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/tree.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/tree.rb: $(srcdir)/lib/tkextlib/blt/tree.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/tree.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/tree.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/treeview.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/treeview.rb: $(srcdir)/lib/tkextlib/blt/treeview.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/treeview.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/treeview.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/unix_dnd.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/unix_dnd.rb: $(srcdir)/lib/tkextlib/blt/unix_dnd.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/unix_dnd.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/unix_dnd.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/vector.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/vector.rb: $(srcdir)/lib/tkextlib/blt/vector.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/vector.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/vector.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/watch.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/watch.rb: $(srcdir)/lib/tkextlib/blt/watch.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/watch.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/watch.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/win_printer.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/win_printer.rb: $(srcdir)/lib/tkextlib/blt/win_printer.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/win_printer.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/win_printer.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/winop.rb $(RUBYLIBDIR)/tkextlib/blt
$(RUBYLIBDIR)/tkextlib/blt/winop.rb: $(srcdir)/lib/tkextlib/blt/winop.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/winop.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/winop.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/tile
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/tile/button.rb $(RUBYLIBDIR)/tkextlib/blt/tile
$(RUBYLIBDIR)/tkextlib/blt/tile/button.rb: $(srcdir)/lib/tkextlib/blt/tile/button.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/tile/button.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/tile/button.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/tile/checkbutton.rb $(RUBYLIBDIR)/tkextlib/blt/tile
$(RUBYLIBDIR)/tkextlib/blt/tile/checkbutton.rb: $(srcdir)/lib/tkextlib/blt/tile/checkbutton.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/tile/checkbutton.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/tile/checkbutton.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/tile/frame.rb $(RUBYLIBDIR)/tkextlib/blt/tile
$(RUBYLIBDIR)/tkextlib/blt/tile/frame.rb: $(srcdir)/lib/tkextlib/blt/tile/frame.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/tile/frame.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/tile/frame.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/tile/label.rb $(RUBYLIBDIR)/tkextlib/blt/tile
$(RUBYLIBDIR)/tkextlib/blt/tile/label.rb: $(srcdir)/lib/tkextlib/blt/tile/label.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/tile/label.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/tile/label.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/tile/radiobutton.rb $(RUBYLIBDIR)/tkextlib/blt/tile
$(RUBYLIBDIR)/tkextlib/blt/tile/radiobutton.rb: $(srcdir)/lib/tkextlib/blt/tile/radiobutton.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/tile/radiobutton.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/tile/radiobutton.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/tile/scrollbar.rb $(RUBYLIBDIR)/tkextlib/blt/tile
$(RUBYLIBDIR)/tkextlib/blt/tile/scrollbar.rb: $(srcdir)/lib/tkextlib/blt/tile/scrollbar.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/tile/scrollbar.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/tile/scrollbar.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt/tile/toplevel.rb $(RUBYLIBDIR)/tkextlib/blt/tile
$(RUBYLIBDIR)/tkextlib/blt/tile/toplevel.rb: $(srcdir)/lib/tkextlib/blt/tile/toplevel.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt/tile/toplevel.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt/tile/toplevel.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib
install-rb-default: $(RUBYLIBDIR)/tkextlib/blt.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/blt.rb: $(srcdir)/lib/tkextlib/blt.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/blt.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/blt.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/bwidget.rb: $(srcdir)/lib/tkextlib/bwidget.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/ICONS.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/ICONS.rb: $(srcdir)/lib/tkextlib/ICONS.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/ICONS.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/ICONS.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/itcl.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/itcl.rb: $(srcdir)/lib/tkextlib/itcl.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/itcl.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/itcl.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/itk.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/itk.rb: $(srcdir)/lib/tkextlib/itk.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/itk.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/itk.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/iwidgets.rb: $(srcdir)/lib/tkextlib/iwidgets.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/pkg_checker.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/pkg_checker.rb: $(srcdir)/lib/tkextlib/pkg_checker.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/pkg_checker.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/pkg_checker.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/setup.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/setup.rb: $(srcdir)/lib/tkextlib/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/setup.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/tcllib.rb: $(srcdir)/lib/tkextlib/tcllib.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tclx.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/tclx.rb: $(srcdir)/lib/tkextlib/tclx.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tclx.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tclx.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/tile.rb: $(srcdir)/lib/tkextlib/tile.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkDND.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/tkDND.rb: $(srcdir)/lib/tkextlib/tkDND.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkDND.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkDND.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkHTML.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/tkHTML.rb: $(srcdir)/lib/tkextlib/tkHTML.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkHTML.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkHTML.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/tkimg.rb: $(srcdir)/lib/tkextlib/tkimg.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkimg.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkimg.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tktable.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/tktable.rb: $(srcdir)/lib/tkextlib/tktable.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tktable.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tktable.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tktrans.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/tktrans.rb: $(srcdir)/lib/tkextlib/tktrans.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tktrans.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tktrans.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/treectrl.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/treectrl.rb: $(srcdir)/lib/tkextlib/treectrl.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/treectrl.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/treectrl.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/trofs.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/trofs.rb: $(srcdir)/lib/tkextlib/trofs.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/trofs.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/trofs.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/version.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/version.rb: $(srcdir)/lib/tkextlib/version.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/version.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/version.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/vu.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/vu.rb: $(srcdir)/lib/tkextlib/vu.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/vu.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/vu.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/winico.rb $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/winico.rb: $(srcdir)/lib/tkextlib/winico.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/winico.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/winico.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/arrowbutton.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/arrowbutton.rb: $(srcdir)/lib/tkextlib/bwidget/arrowbutton.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/arrowbutton.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/arrowbutton.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/bitmap.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/bitmap.rb: $(srcdir)/lib/tkextlib/bwidget/bitmap.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/bitmap.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/bitmap.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/button.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/button.rb: $(srcdir)/lib/tkextlib/bwidget/button.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/button.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/button.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/buttonbox.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/buttonbox.rb: $(srcdir)/lib/tkextlib/bwidget/buttonbox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/buttonbox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/buttonbox.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/combobox.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/combobox.rb: $(srcdir)/lib/tkextlib/bwidget/combobox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/combobox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/combobox.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/dialog.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/dialog.rb: $(srcdir)/lib/tkextlib/bwidget/dialog.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/dialog.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/dialog.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/dragsite.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/dragsite.rb: $(srcdir)/lib/tkextlib/bwidget/dragsite.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/dragsite.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/dragsite.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/dropsite.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/dropsite.rb: $(srcdir)/lib/tkextlib/bwidget/dropsite.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/dropsite.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/dropsite.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/dynamichelp.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/dynamichelp.rb: $(srcdir)/lib/tkextlib/bwidget/dynamichelp.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/dynamichelp.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/dynamichelp.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/entry.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/entry.rb: $(srcdir)/lib/tkextlib/bwidget/entry.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/entry.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/entry.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/label.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/label.rb: $(srcdir)/lib/tkextlib/bwidget/label.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/label.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/label.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/labelentry.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/labelentry.rb: $(srcdir)/lib/tkextlib/bwidget/labelentry.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/labelentry.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/labelentry.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/labelframe.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/labelframe.rb: $(srcdir)/lib/tkextlib/bwidget/labelframe.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/labelframe.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/labelframe.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/listbox.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/listbox.rb: $(srcdir)/lib/tkextlib/bwidget/listbox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/listbox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/listbox.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/mainframe.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/mainframe.rb: $(srcdir)/lib/tkextlib/bwidget/mainframe.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/mainframe.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/mainframe.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/messagedlg.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/messagedlg.rb: $(srcdir)/lib/tkextlib/bwidget/messagedlg.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/messagedlg.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/messagedlg.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/notebook.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/notebook.rb: $(srcdir)/lib/tkextlib/bwidget/notebook.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/notebook.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/notebook.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/pagesmanager.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/pagesmanager.rb: $(srcdir)/lib/tkextlib/bwidget/pagesmanager.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/pagesmanager.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/pagesmanager.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/panedwindow.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/panedwindow.rb: $(srcdir)/lib/tkextlib/bwidget/panedwindow.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/panedwindow.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/panedwindow.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/panelframe.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/panelframe.rb: $(srcdir)/lib/tkextlib/bwidget/panelframe.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/panelframe.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/panelframe.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/passwddlg.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/passwddlg.rb: $(srcdir)/lib/tkextlib/bwidget/passwddlg.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/passwddlg.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/passwddlg.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/progressbar.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/progressbar.rb: $(srcdir)/lib/tkextlib/bwidget/progressbar.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/progressbar.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/progressbar.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/progressdlg.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/progressdlg.rb: $(srcdir)/lib/tkextlib/bwidget/progressdlg.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/progressdlg.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/progressdlg.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/scrollableframe.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/scrollableframe.rb: $(srcdir)/lib/tkextlib/bwidget/scrollableframe.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/scrollableframe.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/scrollableframe.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/scrolledwindow.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/scrolledwindow.rb: $(srcdir)/lib/tkextlib/bwidget/scrolledwindow.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/scrolledwindow.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/scrolledwindow.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/scrollview.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/scrollview.rb: $(srcdir)/lib/tkextlib/bwidget/scrollview.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/scrollview.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/scrollview.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/selectcolor.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/selectcolor.rb: $(srcdir)/lib/tkextlib/bwidget/selectcolor.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/selectcolor.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/selectcolor.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/selectfont.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/selectfont.rb: $(srcdir)/lib/tkextlib/bwidget/selectfont.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/selectfont.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/selectfont.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/separator.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/separator.rb: $(srcdir)/lib/tkextlib/bwidget/separator.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/separator.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/separator.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/setup.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/setup.rb: $(srcdir)/lib/tkextlib/bwidget/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/setup.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/spinbox.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/spinbox.rb: $(srcdir)/lib/tkextlib/bwidget/spinbox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/spinbox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/spinbox.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/statusbar.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/statusbar.rb: $(srcdir)/lib/tkextlib/bwidget/statusbar.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/statusbar.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/statusbar.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/titleframe.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/titleframe.rb: $(srcdir)/lib/tkextlib/bwidget/titleframe.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/titleframe.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/titleframe.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/tree.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/tree.rb: $(srcdir)/lib/tkextlib/bwidget/tree.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/tree.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/tree.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/bwidget/widget.rb $(RUBYLIBDIR)/tkextlib/bwidget
$(RUBYLIBDIR)/tkextlib/bwidget/widget.rb: $(srcdir)/lib/tkextlib/bwidget/widget.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/bwidget/widget.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/bwidget/widget.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/ICONS
install-rb-default: $(RUBYLIBDIR)/tkextlib/ICONS/icons.rb $(RUBYLIBDIR)/tkextlib/ICONS
$(RUBYLIBDIR)/tkextlib/ICONS/icons.rb: $(srcdir)/lib/tkextlib/ICONS/icons.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/ICONS/icons.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/ICONS/icons.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/ICONS/setup.rb $(RUBYLIBDIR)/tkextlib/ICONS
$(RUBYLIBDIR)/tkextlib/ICONS/setup.rb: $(srcdir)/lib/tkextlib/ICONS/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/ICONS/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/ICONS/setup.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/itcl
install-rb-default: $(RUBYLIBDIR)/tkextlib/itcl/incr_tcl.rb $(RUBYLIBDIR)/tkextlib/itcl
$(RUBYLIBDIR)/tkextlib/itcl/incr_tcl.rb: $(srcdir)/lib/tkextlib/itcl/incr_tcl.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/itcl/incr_tcl.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/itcl/incr_tcl.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/itcl/setup.rb $(RUBYLIBDIR)/tkextlib/itcl
$(RUBYLIBDIR)/tkextlib/itcl/setup.rb: $(srcdir)/lib/tkextlib/itcl/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/itcl/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/itcl/setup.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/itk
install-rb-default: $(RUBYLIBDIR)/tkextlib/itk/incr_tk.rb $(RUBYLIBDIR)/tkextlib/itk
$(RUBYLIBDIR)/tkextlib/itk/incr_tk.rb: $(srcdir)/lib/tkextlib/itk/incr_tk.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/itk/incr_tk.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/itk/incr_tk.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/itk/setup.rb $(RUBYLIBDIR)/tkextlib/itk
$(RUBYLIBDIR)/tkextlib/itk/setup.rb: $(srcdir)/lib/tkextlib/itk/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/itk/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/itk/setup.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/buttonbox.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/buttonbox.rb: $(srcdir)/lib/tkextlib/iwidgets/buttonbox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/buttonbox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/buttonbox.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/calendar.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/calendar.rb: $(srcdir)/lib/tkextlib/iwidgets/calendar.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/calendar.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/calendar.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/canvasprintbox.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/canvasprintbox.rb: $(srcdir)/lib/tkextlib/iwidgets/canvasprintbox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/canvasprintbox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/canvasprintbox.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/canvasprintdialog.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/canvasprintdialog.rb: $(srcdir)/lib/tkextlib/iwidgets/canvasprintdialog.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/canvasprintdialog.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/canvasprintdialog.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/checkbox.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/checkbox.rb: $(srcdir)/lib/tkextlib/iwidgets/checkbox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/checkbox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/checkbox.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/combobox.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/combobox.rb: $(srcdir)/lib/tkextlib/iwidgets/combobox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/combobox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/combobox.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/dateentry.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/dateentry.rb: $(srcdir)/lib/tkextlib/iwidgets/dateentry.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/dateentry.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/dateentry.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/datefield.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/datefield.rb: $(srcdir)/lib/tkextlib/iwidgets/datefield.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/datefield.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/datefield.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/dialog.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/dialog.rb: $(srcdir)/lib/tkextlib/iwidgets/dialog.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/dialog.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/dialog.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/dialogshell.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/dialogshell.rb: $(srcdir)/lib/tkextlib/iwidgets/dialogshell.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/dialogshell.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/dialogshell.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/disjointlistbox.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/disjointlistbox.rb: $(srcdir)/lib/tkextlib/iwidgets/disjointlistbox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/disjointlistbox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/disjointlistbox.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/entryfield.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/entryfield.rb: $(srcdir)/lib/tkextlib/iwidgets/entryfield.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/entryfield.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/entryfield.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/extbutton.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/extbutton.rb: $(srcdir)/lib/tkextlib/iwidgets/extbutton.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/extbutton.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/extbutton.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/extfileselectionbox.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/extfileselectionbox.rb: $(srcdir)/lib/tkextlib/iwidgets/extfileselectionbox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/extfileselectionbox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/extfileselectionbox.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/extfileselectiondialog.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/extfileselectiondialog.rb: $(srcdir)/lib/tkextlib/iwidgets/extfileselectiondialog.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/extfileselectiondialog.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/extfileselectiondialog.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/feedback.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/feedback.rb: $(srcdir)/lib/tkextlib/iwidgets/feedback.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/feedback.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/feedback.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/fileselectionbox.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/fileselectionbox.rb: $(srcdir)/lib/tkextlib/iwidgets/fileselectionbox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/fileselectionbox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/fileselectionbox.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/fileselectiondialog.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/fileselectiondialog.rb: $(srcdir)/lib/tkextlib/iwidgets/fileselectiondialog.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/fileselectiondialog.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/fileselectiondialog.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/finddialog.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/finddialog.rb: $(srcdir)/lib/tkextlib/iwidgets/finddialog.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/finddialog.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/finddialog.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/hierarchy.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/hierarchy.rb: $(srcdir)/lib/tkextlib/iwidgets/hierarchy.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/hierarchy.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/hierarchy.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/hyperhelp.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/hyperhelp.rb: $(srcdir)/lib/tkextlib/iwidgets/hyperhelp.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/hyperhelp.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/hyperhelp.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/labeledframe.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/labeledframe.rb: $(srcdir)/lib/tkextlib/iwidgets/labeledframe.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/labeledframe.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/labeledframe.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/labeledwidget.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/labeledwidget.rb: $(srcdir)/lib/tkextlib/iwidgets/labeledwidget.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/labeledwidget.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/labeledwidget.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/mainwindow.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/mainwindow.rb: $(srcdir)/lib/tkextlib/iwidgets/mainwindow.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/mainwindow.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/mainwindow.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/menubar.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/menubar.rb: $(srcdir)/lib/tkextlib/iwidgets/menubar.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/menubar.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/menubar.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/messagebox.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/messagebox.rb: $(srcdir)/lib/tkextlib/iwidgets/messagebox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/messagebox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/messagebox.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/messagedialog.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/messagedialog.rb: $(srcdir)/lib/tkextlib/iwidgets/messagedialog.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/messagedialog.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/messagedialog.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/notebook.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/notebook.rb: $(srcdir)/lib/tkextlib/iwidgets/notebook.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/notebook.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/notebook.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/optionmenu.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/optionmenu.rb: $(srcdir)/lib/tkextlib/iwidgets/optionmenu.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/optionmenu.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/optionmenu.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/panedwindow.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/panedwindow.rb: $(srcdir)/lib/tkextlib/iwidgets/panedwindow.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/panedwindow.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/panedwindow.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/promptdialog.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/promptdialog.rb: $(srcdir)/lib/tkextlib/iwidgets/promptdialog.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/promptdialog.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/promptdialog.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/pushbutton.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/pushbutton.rb: $(srcdir)/lib/tkextlib/iwidgets/pushbutton.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/pushbutton.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/pushbutton.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/radiobox.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/radiobox.rb: $(srcdir)/lib/tkextlib/iwidgets/radiobox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/radiobox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/radiobox.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/scopedobject.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/scopedobject.rb: $(srcdir)/lib/tkextlib/iwidgets/scopedobject.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/scopedobject.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/scopedobject.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/scrolledcanvas.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/scrolledcanvas.rb: $(srcdir)/lib/tkextlib/iwidgets/scrolledcanvas.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/scrolledcanvas.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/scrolledcanvas.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/scrolledframe.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/scrolledframe.rb: $(srcdir)/lib/tkextlib/iwidgets/scrolledframe.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/scrolledframe.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/scrolledframe.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/scrolledhtml.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/scrolledhtml.rb: $(srcdir)/lib/tkextlib/iwidgets/scrolledhtml.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/scrolledhtml.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/scrolledhtml.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/scrolledlistbox.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/scrolledlistbox.rb: $(srcdir)/lib/tkextlib/iwidgets/scrolledlistbox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/scrolledlistbox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/scrolledlistbox.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/scrolledtext.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/scrolledtext.rb: $(srcdir)/lib/tkextlib/iwidgets/scrolledtext.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/scrolledtext.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/scrolledtext.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/scrolledwidget.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/scrolledwidget.rb: $(srcdir)/lib/tkextlib/iwidgets/scrolledwidget.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/scrolledwidget.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/scrolledwidget.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/selectionbox.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/selectionbox.rb: $(srcdir)/lib/tkextlib/iwidgets/selectionbox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/selectionbox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/selectionbox.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/selectiondialog.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/selectiondialog.rb: $(srcdir)/lib/tkextlib/iwidgets/selectiondialog.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/selectiondialog.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/selectiondialog.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/setup.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/setup.rb: $(srcdir)/lib/tkextlib/iwidgets/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/setup.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/shell.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/shell.rb: $(srcdir)/lib/tkextlib/iwidgets/shell.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/shell.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/shell.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/spindate.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/spindate.rb: $(srcdir)/lib/tkextlib/iwidgets/spindate.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/spindate.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/spindate.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/spinint.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/spinint.rb: $(srcdir)/lib/tkextlib/iwidgets/spinint.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/spinint.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/spinint.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/spinner.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/spinner.rb: $(srcdir)/lib/tkextlib/iwidgets/spinner.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/spinner.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/spinner.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/spintime.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/spintime.rb: $(srcdir)/lib/tkextlib/iwidgets/spintime.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/spintime.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/spintime.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/tabnotebook.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/tabnotebook.rb: $(srcdir)/lib/tkextlib/iwidgets/tabnotebook.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/tabnotebook.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/tabnotebook.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/tabset.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/tabset.rb: $(srcdir)/lib/tkextlib/iwidgets/tabset.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/tabset.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/tabset.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/timeentry.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/timeentry.rb: $(srcdir)/lib/tkextlib/iwidgets/timeentry.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/timeentry.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/timeentry.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/timefield.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/timefield.rb: $(srcdir)/lib/tkextlib/iwidgets/timefield.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/timefield.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/timefield.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/toolbar.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/toolbar.rb: $(srcdir)/lib/tkextlib/iwidgets/toolbar.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/toolbar.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/toolbar.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/iwidgets/watch.rb $(RUBYLIBDIR)/tkextlib/iwidgets
$(RUBYLIBDIR)/tkextlib/iwidgets/watch.rb: $(srcdir)/lib/tkextlib/iwidgets/watch.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/iwidgets/watch.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/iwidgets/watch.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/autoscroll.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/autoscroll.rb: $(srcdir)/lib/tkextlib/tcllib/autoscroll.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/autoscroll.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/autoscroll.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/calendar.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/calendar.rb: $(srcdir)/lib/tkextlib/tcllib/calendar.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/calendar.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/calendar.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/canvas_sqmap.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/canvas_sqmap.rb: $(srcdir)/lib/tkextlib/tcllib/canvas_sqmap.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/canvas_sqmap.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/canvas_sqmap.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/canvas_zoom.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/canvas_zoom.rb: $(srcdir)/lib/tkextlib/tcllib/canvas_zoom.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/canvas_zoom.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/canvas_zoom.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/chatwidget.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/chatwidget.rb: $(srcdir)/lib/tkextlib/tcllib/chatwidget.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/chatwidget.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/chatwidget.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/crosshair.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/crosshair.rb: $(srcdir)/lib/tkextlib/tcllib/crosshair.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/crosshair.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/crosshair.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/ctext.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/ctext.rb: $(srcdir)/lib/tkextlib/tcllib/ctext.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/ctext.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/ctext.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/cursor.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/cursor.rb: $(srcdir)/lib/tkextlib/tcllib/cursor.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/cursor.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/cursor.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/dateentry.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/dateentry.rb: $(srcdir)/lib/tkextlib/tcllib/dateentry.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/dateentry.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/dateentry.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/datefield.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/datefield.rb: $(srcdir)/lib/tkextlib/tcllib/datefield.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/datefield.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/datefield.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/diagrams.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/diagrams.rb: $(srcdir)/lib/tkextlib/tcllib/diagrams.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/diagrams.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/diagrams.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/dialog.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/dialog.rb: $(srcdir)/lib/tkextlib/tcllib/dialog.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/dialog.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/dialog.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/getstring.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/getstring.rb: $(srcdir)/lib/tkextlib/tcllib/getstring.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/getstring.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/getstring.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/history.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/history.rb: $(srcdir)/lib/tkextlib/tcllib/history.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/history.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/history.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/ico.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/ico.rb: $(srcdir)/lib/tkextlib/tcllib/ico.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/ico.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/ico.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/ip_entry.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/ip_entry.rb: $(srcdir)/lib/tkextlib/tcllib/ip_entry.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/ip_entry.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/ip_entry.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/khim.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/khim.rb: $(srcdir)/lib/tkextlib/tcllib/khim.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/khim.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/khim.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/menuentry.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/menuentry.rb: $(srcdir)/lib/tkextlib/tcllib/menuentry.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/menuentry.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/menuentry.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/ntext.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/ntext.rb: $(srcdir)/lib/tkextlib/tcllib/ntext.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/ntext.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/ntext.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/panelframe.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/panelframe.rb: $(srcdir)/lib/tkextlib/tcllib/panelframe.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/panelframe.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/panelframe.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/plotchart.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/plotchart.rb: $(srcdir)/lib/tkextlib/tcllib/plotchart.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/plotchart.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/plotchart.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/ruler.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/ruler.rb: $(srcdir)/lib/tkextlib/tcllib/ruler.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/ruler.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/ruler.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/screenruler.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/screenruler.rb: $(srcdir)/lib/tkextlib/tcllib/screenruler.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/screenruler.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/screenruler.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/scrolledwindow.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/scrolledwindow.rb: $(srcdir)/lib/tkextlib/tcllib/scrolledwindow.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/scrolledwindow.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/scrolledwindow.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/scrollwin.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/scrollwin.rb: $(srcdir)/lib/tkextlib/tcllib/scrollwin.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/scrollwin.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/scrollwin.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/setup.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/setup.rb: $(srcdir)/lib/tkextlib/tcllib/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/setup.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/statusbar.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/statusbar.rb: $(srcdir)/lib/tkextlib/tcllib/statusbar.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/statusbar.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/statusbar.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/style.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/style.rb: $(srcdir)/lib/tkextlib/tcllib/style.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/style.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/style.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/superframe.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/superframe.rb: $(srcdir)/lib/tkextlib/tcllib/superframe.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/superframe.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/superframe.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/swaplist.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/swaplist.rb: $(srcdir)/lib/tkextlib/tcllib/swaplist.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/swaplist.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/swaplist.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/tablelist.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/tablelist.rb: $(srcdir)/lib/tkextlib/tcllib/tablelist.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/tablelist.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/tablelist.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/tablelist_core.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/tablelist_core.rb: $(srcdir)/lib/tkextlib/tcllib/tablelist_core.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/tablelist_core.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/tablelist_core.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/tablelist_tile.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/tablelist_tile.rb: $(srcdir)/lib/tkextlib/tcllib/tablelist_tile.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/tablelist_tile.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/tablelist_tile.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/tkpiechart.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/tkpiechart.rb: $(srcdir)/lib/tkextlib/tcllib/tkpiechart.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/tkpiechart.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/tkpiechart.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/toolbar.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/toolbar.rb: $(srcdir)/lib/tkextlib/tcllib/toolbar.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/toolbar.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/toolbar.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/tooltip.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/tooltip.rb: $(srcdir)/lib/tkextlib/tcllib/tooltip.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/tooltip.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/tooltip.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tcllib/widget.rb $(RUBYLIBDIR)/tkextlib/tcllib
$(RUBYLIBDIR)/tkextlib/tcllib/widget.rb: $(srcdir)/lib/tkextlib/tcllib/widget.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tcllib/widget.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tcllib/widget.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/tclx
install-rb-default: $(RUBYLIBDIR)/tkextlib/tclx/setup.rb $(RUBYLIBDIR)/tkextlib/tclx
$(RUBYLIBDIR)/tkextlib/tclx/setup.rb: $(srcdir)/lib/tkextlib/tclx/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tclx/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tclx/setup.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tclx/tclx.rb $(RUBYLIBDIR)/tkextlib/tclx
$(RUBYLIBDIR)/tkextlib/tclx/tclx.rb: $(srcdir)/lib/tkextlib/tclx/tclx.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tclx/tclx.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tclx/tclx.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/tile
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/dialog.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/dialog.rb: $(srcdir)/lib/tkextlib/tile/dialog.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/dialog.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/dialog.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/setup.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/setup.rb: $(srcdir)/lib/tkextlib/tile/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/setup.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/sizegrip.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/sizegrip.rb: $(srcdir)/lib/tkextlib/tile/sizegrip.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/sizegrip.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/sizegrip.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/style.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/style.rb: $(srcdir)/lib/tkextlib/tile/style.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/style.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/style.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/tbutton.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/tbutton.rb: $(srcdir)/lib/tkextlib/tile/tbutton.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/tbutton.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/tbutton.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/tcheckbutton.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/tcheckbutton.rb: $(srcdir)/lib/tkextlib/tile/tcheckbutton.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/tcheckbutton.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/tcheckbutton.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/tcombobox.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/tcombobox.rb: $(srcdir)/lib/tkextlib/tile/tcombobox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/tcombobox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/tcombobox.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/tentry.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/tentry.rb: $(srcdir)/lib/tkextlib/tile/tentry.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/tentry.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/tentry.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/tframe.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/tframe.rb: $(srcdir)/lib/tkextlib/tile/tframe.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/tframe.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/tframe.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/tlabel.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/tlabel.rb: $(srcdir)/lib/tkextlib/tile/tlabel.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/tlabel.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/tlabel.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/tlabelframe.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/tlabelframe.rb: $(srcdir)/lib/tkextlib/tile/tlabelframe.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/tlabelframe.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/tlabelframe.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/tmenubutton.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/tmenubutton.rb: $(srcdir)/lib/tkextlib/tile/tmenubutton.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/tmenubutton.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/tmenubutton.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/tnotebook.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/tnotebook.rb: $(srcdir)/lib/tkextlib/tile/tnotebook.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/tnotebook.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/tnotebook.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/tpaned.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/tpaned.rb: $(srcdir)/lib/tkextlib/tile/tpaned.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/tpaned.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/tpaned.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/tprogressbar.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/tprogressbar.rb: $(srcdir)/lib/tkextlib/tile/tprogressbar.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/tprogressbar.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/tprogressbar.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/tradiobutton.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/tradiobutton.rb: $(srcdir)/lib/tkextlib/tile/tradiobutton.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/tradiobutton.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/tradiobutton.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/treeview.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/treeview.rb: $(srcdir)/lib/tkextlib/tile/treeview.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/treeview.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/treeview.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/tscale.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/tscale.rb: $(srcdir)/lib/tkextlib/tile/tscale.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/tscale.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/tscale.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/tscrollbar.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/tscrollbar.rb: $(srcdir)/lib/tkextlib/tile/tscrollbar.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/tscrollbar.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/tscrollbar.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/tseparator.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/tseparator.rb: $(srcdir)/lib/tkextlib/tile/tseparator.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/tseparator.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/tseparator.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/tspinbox.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/tspinbox.rb: $(srcdir)/lib/tkextlib/tile/tspinbox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/tspinbox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/tspinbox.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tile/tsquare.rb $(RUBYLIBDIR)/tkextlib/tile
$(RUBYLIBDIR)/tkextlib/tile/tsquare.rb: $(srcdir)/lib/tkextlib/tile/tsquare.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tile/tsquare.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tile/tsquare.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/tkDND
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkDND/setup.rb $(RUBYLIBDIR)/tkextlib/tkDND
$(RUBYLIBDIR)/tkextlib/tkDND/setup.rb: $(srcdir)/lib/tkextlib/tkDND/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkDND/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkDND/setup.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkDND/shape.rb $(RUBYLIBDIR)/tkextlib/tkDND
$(RUBYLIBDIR)/tkextlib/tkDND/shape.rb: $(srcdir)/lib/tkextlib/tkDND/shape.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkDND/shape.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkDND/shape.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkDND/tkdnd.rb $(RUBYLIBDIR)/tkextlib/tkDND
$(RUBYLIBDIR)/tkextlib/tkDND/tkdnd.rb: $(srcdir)/lib/tkextlib/tkDND/tkdnd.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkDND/tkdnd.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkDND/tkdnd.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/tkHTML
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkHTML/htmlwidget.rb $(RUBYLIBDIR)/tkextlib/tkHTML
$(RUBYLIBDIR)/tkextlib/tkHTML/htmlwidget.rb: $(srcdir)/lib/tkextlib/tkHTML/htmlwidget.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkHTML/htmlwidget.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkHTML/htmlwidget.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkHTML/setup.rb $(RUBYLIBDIR)/tkextlib/tkHTML
$(RUBYLIBDIR)/tkextlib/tkHTML/setup.rb: $(srcdir)/lib/tkextlib/tkHTML/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkHTML/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkHTML/setup.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg/bmp.rb $(RUBYLIBDIR)/tkextlib/tkimg
$(RUBYLIBDIR)/tkextlib/tkimg/bmp.rb: $(srcdir)/lib/tkextlib/tkimg/bmp.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkimg/bmp.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkimg/bmp.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg/gif.rb $(RUBYLIBDIR)/tkextlib/tkimg
$(RUBYLIBDIR)/tkextlib/tkimg/gif.rb: $(srcdir)/lib/tkextlib/tkimg/gif.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkimg/gif.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkimg/gif.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg/ico.rb $(RUBYLIBDIR)/tkextlib/tkimg
$(RUBYLIBDIR)/tkextlib/tkimg/ico.rb: $(srcdir)/lib/tkextlib/tkimg/ico.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkimg/ico.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkimg/ico.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg/jpeg.rb $(RUBYLIBDIR)/tkextlib/tkimg
$(RUBYLIBDIR)/tkextlib/tkimg/jpeg.rb: $(srcdir)/lib/tkextlib/tkimg/jpeg.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkimg/jpeg.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkimg/jpeg.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg/pcx.rb $(RUBYLIBDIR)/tkextlib/tkimg
$(RUBYLIBDIR)/tkextlib/tkimg/pcx.rb: $(srcdir)/lib/tkextlib/tkimg/pcx.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkimg/pcx.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkimg/pcx.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg/pixmap.rb $(RUBYLIBDIR)/tkextlib/tkimg
$(RUBYLIBDIR)/tkextlib/tkimg/pixmap.rb: $(srcdir)/lib/tkextlib/tkimg/pixmap.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkimg/pixmap.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkimg/pixmap.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg/png.rb $(RUBYLIBDIR)/tkextlib/tkimg
$(RUBYLIBDIR)/tkextlib/tkimg/png.rb: $(srcdir)/lib/tkextlib/tkimg/png.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkimg/png.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkimg/png.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg/ppm.rb $(RUBYLIBDIR)/tkextlib/tkimg
$(RUBYLIBDIR)/tkextlib/tkimg/ppm.rb: $(srcdir)/lib/tkextlib/tkimg/ppm.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkimg/ppm.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkimg/ppm.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg/ps.rb $(RUBYLIBDIR)/tkextlib/tkimg
$(RUBYLIBDIR)/tkextlib/tkimg/ps.rb: $(srcdir)/lib/tkextlib/tkimg/ps.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkimg/ps.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkimg/ps.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg/setup.rb $(RUBYLIBDIR)/tkextlib/tkimg
$(RUBYLIBDIR)/tkextlib/tkimg/setup.rb: $(srcdir)/lib/tkextlib/tkimg/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkimg/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkimg/setup.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg/sgi.rb $(RUBYLIBDIR)/tkextlib/tkimg
$(RUBYLIBDIR)/tkextlib/tkimg/sgi.rb: $(srcdir)/lib/tkextlib/tkimg/sgi.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkimg/sgi.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkimg/sgi.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg/sun.rb $(RUBYLIBDIR)/tkextlib/tkimg
$(RUBYLIBDIR)/tkextlib/tkimg/sun.rb: $(srcdir)/lib/tkextlib/tkimg/sun.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkimg/sun.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkimg/sun.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg/tga.rb $(RUBYLIBDIR)/tkextlib/tkimg
$(RUBYLIBDIR)/tkextlib/tkimg/tga.rb: $(srcdir)/lib/tkextlib/tkimg/tga.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkimg/tga.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkimg/tga.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg/tiff.rb $(RUBYLIBDIR)/tkextlib/tkimg
$(RUBYLIBDIR)/tkextlib/tkimg/tiff.rb: $(srcdir)/lib/tkextlib/tkimg/tiff.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkimg/tiff.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkimg/tiff.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg/window.rb $(RUBYLIBDIR)/tkextlib/tkimg
$(RUBYLIBDIR)/tkextlib/tkimg/window.rb: $(srcdir)/lib/tkextlib/tkimg/window.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkimg/window.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkimg/window.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg/xbm.rb $(RUBYLIBDIR)/tkextlib/tkimg
$(RUBYLIBDIR)/tkextlib/tkimg/xbm.rb: $(srcdir)/lib/tkextlib/tkimg/xbm.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkimg/xbm.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkimg/xbm.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tkimg/xpm.rb $(RUBYLIBDIR)/tkextlib/tkimg
$(RUBYLIBDIR)/tkextlib/tkimg/xpm.rb: $(srcdir)/lib/tkextlib/tkimg/xpm.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tkimg/xpm.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tkimg/xpm.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/tktable
install-rb-default: $(RUBYLIBDIR)/tkextlib/tktable/setup.rb $(RUBYLIBDIR)/tkextlib/tktable
$(RUBYLIBDIR)/tkextlib/tktable/setup.rb: $(srcdir)/lib/tkextlib/tktable/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tktable/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tktable/setup.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tktable/tktable.rb $(RUBYLIBDIR)/tkextlib/tktable
$(RUBYLIBDIR)/tkextlib/tktable/tktable.rb: $(srcdir)/lib/tkextlib/tktable/tktable.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tktable/tktable.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tktable/tktable.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/tktrans
install-rb-default: $(RUBYLIBDIR)/tkextlib/tktrans/setup.rb $(RUBYLIBDIR)/tkextlib/tktrans
$(RUBYLIBDIR)/tkextlib/tktrans/setup.rb: $(srcdir)/lib/tkextlib/tktrans/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tktrans/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tktrans/setup.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/tktrans/tktrans.rb $(RUBYLIBDIR)/tkextlib/tktrans
$(RUBYLIBDIR)/tkextlib/tktrans/tktrans.rb: $(srcdir)/lib/tkextlib/tktrans/tktrans.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/tktrans/tktrans.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/tktrans/tktrans.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/treectrl
install-rb-default: $(RUBYLIBDIR)/tkextlib/treectrl/setup.rb $(RUBYLIBDIR)/tkextlib/treectrl
$(RUBYLIBDIR)/tkextlib/treectrl/setup.rb: $(srcdir)/lib/tkextlib/treectrl/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/treectrl/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/treectrl/setup.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/treectrl/tktreectrl.rb $(RUBYLIBDIR)/tkextlib/treectrl
$(RUBYLIBDIR)/tkextlib/treectrl/tktreectrl.rb: $(srcdir)/lib/tkextlib/treectrl/tktreectrl.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/treectrl/tktreectrl.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/treectrl/tktreectrl.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/trofs
install-rb-default: $(RUBYLIBDIR)/tkextlib/trofs/setup.rb $(RUBYLIBDIR)/tkextlib/trofs
$(RUBYLIBDIR)/tkextlib/trofs/setup.rb: $(srcdir)/lib/tkextlib/trofs/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/trofs/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/trofs/setup.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/trofs/trofs.rb $(RUBYLIBDIR)/tkextlib/trofs
$(RUBYLIBDIR)/tkextlib/trofs/trofs.rb: $(srcdir)/lib/tkextlib/trofs/trofs.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/trofs/trofs.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/trofs/trofs.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/vu
install-rb-default: $(RUBYLIBDIR)/tkextlib/vu/bargraph.rb $(RUBYLIBDIR)/tkextlib/vu
$(RUBYLIBDIR)/tkextlib/vu/bargraph.rb: $(srcdir)/lib/tkextlib/vu/bargraph.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/vu/bargraph.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/vu/bargraph.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/vu/charts.rb $(RUBYLIBDIR)/tkextlib/vu
$(RUBYLIBDIR)/tkextlib/vu/charts.rb: $(srcdir)/lib/tkextlib/vu/charts.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/vu/charts.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/vu/charts.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/vu/dial.rb $(RUBYLIBDIR)/tkextlib/vu
$(RUBYLIBDIR)/tkextlib/vu/dial.rb: $(srcdir)/lib/tkextlib/vu/dial.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/vu/dial.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/vu/dial.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/vu/pie.rb $(RUBYLIBDIR)/tkextlib/vu
$(RUBYLIBDIR)/tkextlib/vu/pie.rb: $(srcdir)/lib/tkextlib/vu/pie.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/vu/pie.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/vu/pie.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/vu/setup.rb $(RUBYLIBDIR)/tkextlib/vu
$(RUBYLIBDIR)/tkextlib/vu/setup.rb: $(srcdir)/lib/tkextlib/vu/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/vu/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/vu/setup.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/vu/spinbox.rb $(RUBYLIBDIR)/tkextlib/vu
$(RUBYLIBDIR)/tkextlib/vu/spinbox.rb: $(srcdir)/lib/tkextlib/vu/spinbox.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/vu/spinbox.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/vu/spinbox.rb
pre-install-rb-default: $(RUBYLIBDIR)/tkextlib/winico
install-rb-default: $(RUBYLIBDIR)/tkextlib/winico/setup.rb $(RUBYLIBDIR)/tkextlib/winico
$(RUBYLIBDIR)/tkextlib/winico/setup.rb: $(srcdir)/lib/tkextlib/winico/setup.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/winico/setup.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/winico/setup.rb
install-rb-default: $(RUBYLIBDIR)/tkextlib/winico/winico.rb $(RUBYLIBDIR)/tkextlib/winico
$(RUBYLIBDIR)/tkextlib/winico/winico.rb: $(srcdir)/lib/tkextlib/winico/winico.rb
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/winico/winico.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/winico/winico.rb
pre-install-rb-default:
	$(ECHO) installing default tcltklib libraries
clean-rb-default::
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/blt/tile 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/iwidgets 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/blt 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/winico 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/trofs 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/bwidget 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/ICONS 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/itcl 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/itk 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/vu 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/tcllib 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/treectrl 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/tile 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/tkDND 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/tkHTML 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/tkimg 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/tktable 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/tktrans 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/tclx 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tk 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR) 2> /dev/null || true
install-rb: $(RUBYLIBDIR)/tkextlib/SUPPORT_STATUS $(RUBYLIBDIR)/tkextlib
$(RUBYLIBDIR)/tkextlib/SUPPORT_STATUS: $(srcdir)/lib/tkextlib/SUPPORT_STATUS
	$(Q) $(COPY) $(srcdir)/lib/tkextlib/SUPPORT_STATUS $(@D)
clean-rb::
	@-$(RM) $(RUBYLIBDIR)/tkextlib/SUPPORT_STATUS
pre-install-rb:
	$(ECHO) installing tcltklib libraries
clean-rb::
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/blt/tile 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/iwidgets 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/blt 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/winico 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/trofs 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/bwidget 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/ICONS 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/itcl 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/itk 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/vu 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/tcllib 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/treectrl 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/tile 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/tkDND 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/tkHTML 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/tkimg 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/tktable 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/tktrans 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib/tclx 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tkextlib 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/tk 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR) 2> /dev/null || true
$(RUBYARCHDIR):
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR):
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tk:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/blt:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/blt/tile:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/bwidget:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/ICONS:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/itcl:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/itk:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/iwidgets:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/tcllib:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/tclx:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/tile:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/tkDND:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/tkHTML:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/tkimg:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/tktable:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/tktrans:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/treectrl:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/trofs:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/vu:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/tkextlib/winico:
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

tcltklib.o: tcltklib.c $(hdrdir)/ruby/ruby.h $(arch_hdrdir)/ruby/config.h $(hdrdir)/ruby/defines.h stubs.h
stubs.o: stubs.c $(hdrdir)/ruby/ruby.h $(arch_hdrdir)/ruby/config.h $(hdrdir)/ruby/defines.h stubs.h
