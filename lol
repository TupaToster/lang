g++ -M  lib/flog.cpp -o _deps/flog.d
echo "lib/" > line.tmp
mv _deps/flog.d dependencies.tmp
head -c -1 -q line.tmp dependencies.tmp > _deps/flog.d
rm dependencies.tmp line.tmp
g++ -c  lib/flog.cpp -o _objs/flog.o
g++ -M  lib/text.cpp -o _deps/text.d
echo "lib/" > line.tmp
mv _deps/text.d dependencies.tmp
head -c -1 -q line.tmp dependencies.tmp > _deps/text.d
rm dependencies.tmp line.tmp
g++ -c  lib/text.cpp -o _objs/text.o
g++ -M  lib/syntax_autogen.cpp -o _deps/syntax_autogen.d
echo "lib/" > line.tmp
mv _deps/syntax_autogen.d dependencies.tmp
head -c -1 -q line.tmp dependencies.tmp > _deps/syntax_autogen.d
rm dependencies.tmp line.tmp
g++ -c  lib/syntax_autogen.cpp -o _objs/syntax_autogen.o
g++ -M  front/front.cpp -o _deps/front.d
echo "front/" > line.tmp
mv _deps/front.d dependencies.tmp
head -c -1 -q line.tmp dependencies.tmp > _deps/front.d
rm dependencies.tmp line.tmp
g++ -c  front/front.cpp -o _objs/front.o
g++ -M  front/frontMain.cpp -o _deps/frontMain.d
echo "front/" > line.tmp
mv _deps/frontMain.d dependencies.tmp
head -c -1 -q line.tmp dependencies.tmp > _deps/frontMain.d
rm dependencies.tmp line.tmp
g++ -c  front/frontMain.cpp -o _objs/frontMain.o
g++ -M  codeGenerator/codeGenerator.cpp -o _deps/codeGenerator.d
echo "codeGenerator/" > line.tmp
mv _deps/codeGenerator.d dependencies.tmp
head -c -1 -q line.tmp dependencies.tmp > _deps/codeGenerator.d
rm dependencies.tmp line.tmp
g++ -c  codeGenerator/codeGenerator.cpp -o _objs/codeGenerator.o
g++  _objs/flog.o _objs/text.o _objs/syntax_autogen.o _objs/front.o _objs/frontMain.o -o front.exe
# GNU Make 4.3
# Built for Windows32
# Copyright (C) 1988-2020 Free Software Foundation, Inc.
# License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
# This is free software: you are free to change and redistribute it.
# There is NO WARRANTY, to the extent permitted by law.

# Make data base, printed on Tue Feb 21 15:31:44 2023

# Variables

# environment
FPS_BROWSER_APP_PROFILE_STRING = Internet Explorer
# default
PREPROCESS.S = $(CC) -E $(CPPFLAGS)
# default
COMPILE.m = $(OBJC) $(OBJCFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c
# default
ARFLAGS = rv
# default
AS = as
# makefile (from 'Makefile', line 8)
LIBDIR = lib/
# default
AR = ar
# makefile (from 'Makefile', line 5)
OBJDIR = _objs/
# environment
USERPROFILE = C:\Users\maxsi
# environment
ProgramW6432 = C:\Program Files
# default
OBJC = cc
# environment
LOCALAPPDATA = C:\Users\maxsi\AppData\Local
# makefile (from 'Makefile', line 9)
FRONTDIR = front/
# default
LINK.S = $(CC) $(ASFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_MACH)
# default
LINK.s = $(CC) $(ASFLAGS) $(LDFLAGS) $(TARGET_MACH)
# environment
PROCESSOR_LEVEL = 23
# environment
GNUPLOT_LIB = C:\Program Files\gnuplot\demo;C:\Program Files\gnuplot\demo\games;C:\Program Files\gnuplot\share
# default
MAKE_COMMAND := C:/MinGW/MinGW/bin/make.exe
# environment
VSCODE_INJECTION = 1
# environment
VSCODE_GIT_ASKPASS_EXTRA_ARGS = --ms-enable-electron-run-as-node
# automatic
@D = $(patsubst %/,%,$(patsubst %\,%,$(dir $@)))
# environment
CHROME_CRASHPAD_PIPE_NAME = \\.\pipe\LOCAL\crashpad_10488_FOBOFHUUMBJAAMYN
# default
COFLAGS = 
# environment
CommonProgramFiles = C:\Program Files\Common Files
# default
COMPILE.mod = $(M2C) $(M2FLAGS) $(MODFLAGS) $(TARGET_ARCH)
# environment
FPS_BROWSER_USER_PROFILE_STRING = Default
# default
.VARIABLES := 
# automatic
%D = $(patsubst %/,%,$(patsubst %\,%,$(dir $%)))
# default
LINK.o = $(CC) $(LDFLAGS) $(TARGET_ARCH)
# default
TEXI2DVI = texi2dvi
# automatic
^D = $(patsubst %/,%,$(patsubst %\,%,$(dir $^)))
# automatic
%F = $(notdir $%)
# makefile (from 'Makefile', line 16)
FRONT := front/front.cpp front/frontMain.cpp
# default
LEX.l = $(LEX) $(LFLAGS) -t
# environment
LANG = en_US.UTF-8
# default
.LOADED := 
# environment
TMP = C:\Users\maxsi\AppData\Local\Temp
# default
.INCLUDE_DIRS = .
# default
COMPILE.c = $(CC) $(CFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c
# makefile
MAKEFLAGS = p
# default
LINK.f = $(FC) $(FFLAGS) $(LDFLAGS) $(TARGET_ARCH)
# default
TANGLE = tangle
# makefile
CURDIR := D:/los_projectados/lang
# default
PREPROCESS.F = $(FC) $(FFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -F
# automatic
*D = $(patsubst %/,%,$(patsubst %\,%,$(dir $*)))
# makefile (from 'Makefile', line 6)
DEPSDIR = _deps/
# environment
MFLAGS = -p
# default
COMPILE.p = $(PC) $(PFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c
# default
.SHELLFLAGS := -c
# default
M2C = m2c
# default
COMPILE.cpp = $(COMPILE.cc)
# default
TEX = tex
# environment
PSModulePath = C:\Users\maxsi\OneDrive\?????????\WindowsPowerShell\Modules;C:\Program Files\WindowsPowerShell\Modules;C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules
# automatic
+D = $(patsubst %/,%,$(patsubst %\,%,$(dir $+)))
# environment
GIT_ASKPASS = c:\Users\maxsi\AppData\Local\Programs\Microsoft VS Code\resources\app\extensions\git\dist\askpass.sh
# makefile (from '_deps/text.d', line 1)
MAKEFILE_LIST := Makefile _deps/codeGenerator.d _deps/flog.d _deps/front.d _deps/frontMain.d _deps/syntax_autogen.d _deps/text.d
# default
F77FLAGS = $(FFLAGS)
# automatic
@F = $(notdir $@)
# automatic
?D = $(patsubst %/,%,$(patsubst %\,%,$(dir $?)))
# default
COMPILE.def = $(M2C) $(M2FLAGS) $(DEFFLAGS) $(TARGET_ARCH)
# default
CTANGLE = ctangle
# environment
ProgramFiles(x86) = C:\Program Files (x86)
# environment
OneDriveConsumer = C:\Users\maxsi\OneDrive
# automatic
*F = $(notdir $*)
# makefile (from 'Makefile', line 17)
LIB := lib/flog.cpp lib/text.cpp lib/syntax_autogen.cpp
# automatic
<D = $(patsubst %/,%,$(patsubst %\,%,$(dir $<)))
# environment
OneDrive = C:\Users\maxsi\OneDrive
# default
COMPILE.C = $(COMPILE.cc)
# default
YACC.m = $(YACC) $(YFLAGS)
# default
LINK.C = $(LINK.cc)
# default
MAKE_HOST := Windows32
# default
LINK.c = $(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)
# makefile (from 'Makefile', line 19)
OBJS = $(LIB:.cpp=.o) $(FRONT:.cpp=.o) $(CODEGEN:.cpp=.o)
# default
SHELL := C:/MinGW/MinGW/git/usr/bin/sh.exe
# environment
windir = C:\WINDOWS
# environment
HOMEPATH = \Users\maxsi
# default
LINK.F = $(FC) $(FFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)
# environment
MAKELEVEL := 0
# default
MAKE = $(MAKE_COMMAND)
# default
FC = f77
# environment
PATH = C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\WINDOWS\System32\OpenSSH\;C:\Program Files\gnuplot\bin;C:\Users\maxsi\AppData\Local\Packages\PythonSoftwareFoundation.Python.3.10_qbz5n2kfra8p0\LocalCache\local-packages\Python310\Scripts;D:\pythonich\Scripts\;D:\pythonich\;C:\Users\maxsi\AppData\Local\Microsoft\WindowsApps;C:\Users\maxsi\AppData\Local\Programs\Microsoft VS Code;C:\Users\maxsi\AppData\Local\GitHubDesktop\bin;D:\texlive\bin\win32;C:\Users\maxsi\AppData\Local\Programs\Microsoft VS Code\bin;C:\Program Files\Graphviz\bin;D:\Graphviz\bin;C:\MinGW\MinGW\bin;C:\MinGW\MinGW\git\usr\bin;C:\MinGW\MinGW\git\bin;
# default
LINT = lint
# environment
COMPUTERNAME = TOSTER
# default
PC = pc
# default
MAKEFILES := 
# environment
VSCODE_GIT_IPC_HANDLE = \\.\pipe\vscode-git-d4a30263d8-sock
# environment
VSCODE_GIT_ASKPASS_NODE = C:\Users\maxsi\AppData\Local\Programs\Microsoft VS Code\Code.exe
# automatic
^F = $(notdir $^)
# environment
CommonProgramFiles(x86) = C:\Program Files (x86)\Common Files
# default
LEX.m = $(LEX) $(LFLAGS) -t
# environment
VSCODE_GIT_ASKPASS_MAIN = c:\Users\maxsi\AppData\Local\Programs\Microsoft VS Code\resources\app\extensions\git\dist\askpass-main.js
# default
.LIBPATTERNS = lib%.dll.a %.dll.a lib%.a %.lib lib%.dll %.dll
# default
CPP = $(CC) -E
# default
LINK.cc = $(CXX) $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)
# environment
LOGONSERVER = \\TOSTER
# environment
USERNAME = maxsi
# environment
TERM_PROGRAM = vscode
# default
CHECKOUT,v = +$(if $(wildcard $@),,$(CO) $(COFLAGS) $< $@)
# default
COMPILE.f = $(FC) $(FFLAGS) $(TARGET_ARCH) -c
# default
COMPILE.r = $(FC) $(FFLAGS) $(RFLAGS) $(TARGET_ARCH) -c
# default
COMPILE.S = $(CC) $(ASFLAGS) $(CPPFLAGS) $(TARGET_MACH) -c
# automatic
?F = $(notdir $?)
# default
GET = echo no sccs get
# default
LINK.r = $(FC) $(FFLAGS) $(RFLAGS) $(LDFLAGS) $(TARGET_ARCH)
# environment
PATHEXT = .COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.CPL
# automatic
+F = $(notdir $+)
# environment
ORIGINAL_XDG_CURRENT_DESKTOP = undefined
# default
MAKEINFO = makeinfo
# environment
USERDOMAIN = TOSTER
# 'override' directive
GNUMAKEFLAGS := 
# default
PREPROCESS.r = $(FC) $(FFLAGS) $(RFLAGS) $(TARGET_ARCH) -F
# environment
OS = Windows_NT
# environment
SystemRoot = C:\WINDOWS
# default
LINK.m = $(OBJC) $(OBJCFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)
# default
LINK.p = $(PC) $(PFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)
# makefile (from 'Makefile', line 15)
CODEGEN := codeGenerator/codeGenerator.cpp
# default
YACC = yacc
# makefile
.DEFAULT_GOAL := all
# default
RM = rm -f
# environment
ProgramFiles = C:\Program Files
# default
WEAVE = weave
# environment
SystemDrive = C:
# default
MAKE_VERSION := 4.3
# environment
.Path = C:\Users\maxsi\AppData\Local\Microsoft\WindowsApps;C:\Users\maxsi\AppData\Local\Programs\Microsoft VS Code\bin;D:\Graphviz\bin;C:\MinGW\MinGW\git\bin;
# makefile (from 'Makefile', line 7)
CODEGENDIR = codeGenerator/
# default
F77 = $(FC)
# environment
USERDOMAIN_ROAMINGPROFILE = TOSTER
# environment
NUMBER_OF_PROCESSORS = 12
# environment
PUBLIC = C:\Users\Public
# environment
ProgramData = C:\ProgramData
# default
CWEAVE = cweave
# default
YACC.y = $(YACC) $(YFLAGS)
# default
LINK.cpp = $(LINK.cc)
# default
CO = co
# environment
APPDATA = C:\Users\maxsi\AppData\Roaming
# environment
HOMEDRIVE = C:
# environment
COLORTERM = truecolor
# default
OUTPUT_OPTION = -o $@
# environment
PROCESSOR_ARCHITECTURE = AMD64
# default
COMPILE.s = $(AS) $(ASFLAGS) $(TARGET_MACH)
# default
MAKE_TERMERR := CONOUT$$
# environment
DriverData = C:\Windows\System32\Drivers\DriverData
# environment
CommonProgramW6432 = C:\Program Files\Common Files
# default
LEX = lex
# environment
TEMP = C:\Users\maxsi\AppData\Local\Temp
# environment
GNUTERM = windows
# default
LINT.c = $(LINT) $(LINTFLAGS) $(CPPFLAGS) $(TARGET_ARCH)
# default
COMPILE.F = $(FC) $(FFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c
# default
.RECIPEPREFIX := 
# automatic
<F = $(notdir $<)
# default
SUFFIXES := .out .a .ln .o .c .cc .C .cpp .p .f .F .m .r .y .l .ym .yl .s .S .mod .sym .def .h .info .dvi .tex .texinfo .texi .txinfo .w .ch .web .sh .elc .el
# environment
ALLUSERSPROFILE = C:\ProgramData
# default
LD = ld
# environment
SESSIONNAME = Console
# default
.FEATURES := target-specific order-only second-expansion else-if shortest-stem undefine oneshell nocomment grouped-target extra-prereqs archives jobserver output-sync load
# environment
PROCESSOR_REVISION = 6801
# default
CXX = g++
# makefile (from 'Makefile', line 1)
CC = g++
# environment
ComSpec = C:\WINDOWS\system32\cmd.exe
# environment
TERM_PROGRAM_VERSION = 1.75.1
# default
COMPILE.cc = $(CXX) $(CXXFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c
# environment
PROCESSOR_IDENTIFIER = AMD64 Family 23 Model 104 Stepping 1, AuthenticAMD
# variable set hash-table stats:
# Load=162/1024=16%, Rehash=0, Collisions=18/422=4%

# Pattern-specific Variable Values

# No pattern-specific variable values.

# Directories

# c:\mingw\mingw\include\c++\11.2.0\ext\SCCS: could not be stat'd.
# codeGenerator/../lib/RCS: could not be stat'd.
# c:\mingw\mingw\include\c++\11.2.0\bits\RCS: could not be stat'd.
# c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\RCS: could not be stat'd.
# c:\mingw\mingw\x86_64-w64-mingw32\include\SCCS: could not be stat'd.
# c:\mingw\mingw\include\c++\11.2.0\tr1 (key c:/mingw/mingw/include/c++/11.2.0/tr1, mtime 1634523597): 64 files, 209 impossibilities.
# c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits (key c:/mingw/mingw/include/c++/11.2.0/x86_64-w64-mingw32/bits, mtime 1634523610): 24 files, no impossibilities.
# c:\mingw\mingw\include\c++\11.2.0\bits\SCCS: could not be stat'd.
# c:\mingw\mingw\include\c++\11.2.0\SCCS: could not be stat'd.
# c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api (key c:/mingw/mingw/x86_64-w64-mingw32/include/sec_api, mtime 1634521707): 13 files, no impossibilities.
# c:\mingw\mingw\x86_64-w64-mingw32\include\sys (key c:/mingw/mingw/x86_64-w64-mingw32/include/sys, mtime 1634521707): 13 files, no impossibilities.
# c:\mingw\mingw\include\c++\11.2.0\tr1\RCS: could not be stat'd.
# RCS: could not be stat'd.
# c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\SCCS: could not be stat'd.
# c:\mingw\mingw\x86_64-w64-mingw32\include\RCS: could not be stat'd.
# _deps (key D:/los_projectados/lang/_deps, mtime 1676982643): 8 files, 114 impossibilities.
# c:\mingw\mingw\x86_64-w64-mingw32\include\sys\RCS: could not be stat'd.
# SCCS: could not be stat'd.
# c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/RCS: could not be stat'd.
# front/../lib/RCS: could not be stat'd.
# c:\mingw\mingw\include\c++\11.2.0 (key c:/mingw/mingw/include/c++/11.2.0, mtime 1634523612): 120 files, 95 impossibilities.
# c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\RCS: could not be stat'd.
# c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\RCS: could not be stat'd.
# c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\SCCS: could not be stat'd.
# c:\mingw\mingw\include\c++\11.2.0\ext (key c:/mingw/mingw/include/c++/11.2.0/ext, mtime 1634523554): 46 files, no impossibilities.
# codeGenerator (key D:/los_projectados/lang/codeGenerator, mtime 1676931599): 5 files, no impossibilities.
# c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\SCCS: could not be stat'd.
# front/SCCS: could not be stat'd.
# c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\SCCS: could not be stat'd.
# front/../lib/SCCS: could not be stat'd.
# c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\RCS: could not be stat'd.
# . (key D:/los_projectados/lang, mtime 1676982643): 17 files, 38 impossibilities.
# c:\mingw\mingw\include\c++\11.2.0\pstl\SCCS: could not be stat'd.
# c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys (key c:/mingw/mingw/x86_64-w64-mingw32/include/sec_api/sys, mtime 1634521707): 3 files, no impossibilities.
# c:\mingw\mingw\x86_64-w64-mingw32\include\sys\SCCS: could not be stat'd.
# c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\SCCS: could not be stat'd.
# c:\mingw\mingw\include\c++\11.2.0\debug (key c:/mingw/mingw/include/c++/11.2.0/debug, mtime 1634523607): 34 files, no impossibilities.
# front (key D:/los_projectados/lang/front, mtime 1676976546): 7 files, no impossibilities.
# lib/RCS: could not be stat'd.
# front/RCS: could not be stat'd.
# c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include (key c:/mingw/mingw/lib/gcc/x86_64-w64-mingw32/11.2.0/include, mtime 1634522940): 116 files, no impossibilities.
# c:\mingw\mingw\include\c++\11.2.0\RCS: could not be stat'd.
# codeGenerator/RCS: could not be stat'd.
# _deps/RCS: could not be stat'd.
# c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed (key c:/mingw/mingw/lib/gcc/x86_64-w64-mingw32/11.2.0/include-fixed, mtime 1634522898): 5 files, no impossibilities.
# c:\mingw\mingw\include\c++\11.2.0\pstl (key c:/mingw/mingw/include/c++/11.2.0/pstl, mtime 1634523611): 24 files, no impossibilities.
# c:\mingw\mingw\x86_64-w64-mingw32\include\sdks (key c:/mingw/mingw/x86_64-w64-mingw32/include/sdks, mtime 1634521707): 3 files, no impossibilities.
# lib/SCCS: could not be stat'd.
# codeGenerator/../lib (key D:/los_projectados/lang/lib, mtime 1676975565): 12 files, no impossibilities.
# c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\RCS: could not be stat'd.
# c:\mingw\mingw\include\c++\11.2.0\bits (key c:/mingw/mingw/include/c++/11.2.0/bits, mtime 1634523612): 148 files, no impossibilities.
# front/../lib (key D:/los_projectados/lang/lib, mtime 1676975565): 12 files, no impossibilities.
# c:\mingw\mingw\x86_64-w64-mingw32\include (key c:/mingw/mingw/x86_64-w64-mingw32/include, mtime 1670079204): 1409 files, 19 impossibilities.
# c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/SCCS: could not be stat'd.
# c:\mingw\mingw\include\c++\11.2.0\pstl\RCS: could not be stat'd.
# c:\mingw\mingw\include\c++\11.2.0\ext\RCS: could not be stat'd.
# c:\mingw\mingw\include\c++\11.2.0\debug\RCS: could not be stat'd.
# _deps/SCCS: could not be stat'd.
# lib (key D:/los_projectados/lang/lib, mtime 1676975565): 12 files, no impossibilities.
# c:\mingw\mingw\include\c++\11.2.0\tr1\SCCS: could not be stat'd.
# c:\mingw\mingw\include\c++\11.2.0\debug\SCCS: could not be stat'd.
# codeGenerator/../lib/SCCS: could not be stat'd.
# codeGenerator/SCCS: could not be stat'd.

# 2095 files, 475 impossibilities in 63 directories.

# Implicit Rules

%.o: %.cpp
#  recipe to execute (from 'Makefile', line 25):
	$(CC) -M $(CFLAGS) $< -o $(DEPSDIR)$(notdir $(@:.o=.d))
	echo "$(dir $<)" > line.tmp
	mv $(DEPSDIR)$(notdir $(@:.o=.d)) dependencies.tmp
	head -c -1 -q line.tmp dependencies.tmp > $(DEPSDIR)$(notdir $(@:.o=.d))
	rm dependencies.tmp line.tmp
	$(CC) -c $(CFLAGS) $< -o $(OBJDIR)$(notdir $@)

%.out:

%.a:

%.ln:

%.o:

%: %.o
#  recipe to execute (built-in):
	$(LINK.o) $^ $(LOADLIBES) $(LDLIBS) -o $@

%.c:

%: %.c
#  recipe to execute (built-in):
	$(LINK.c) $^ $(LOADLIBES) $(LDLIBS) -o $@

%.ln: %.c
#  recipe to execute (built-in):
	$(LINT.c) -C$* $<

%.o: %.c
#  recipe to execute (built-in):
	$(COMPILE.c) $(OUTPUT_OPTION) $<

%.cc:

%: %.cc
#  recipe to execute (built-in):
	$(LINK.cc) $^ $(LOADLIBES) $(LDLIBS) -o $@

%.o: %.cc
#  recipe to execute (built-in):
	$(COMPILE.cc) $(OUTPUT_OPTION) $<

%.C:

%: %.C
#  recipe to execute (built-in):
	$(LINK.C) $^ $(LOADLIBES) $(LDLIBS) -o $@

%.o: %.C
#  recipe to execute (built-in):
	$(COMPILE.C) $(OUTPUT_OPTION) $<

%.cpp:

%: %.cpp
#  recipe to execute (built-in):
	$(LINK.cpp) $^ $(LOADLIBES) $(LDLIBS) -o $@

%.p:

%: %.p
#  recipe to execute (built-in):
	$(LINK.p) $^ $(LOADLIBES) $(LDLIBS) -o $@

%.o: %.p
#  recipe to execute (built-in):
	$(COMPILE.p) $(OUTPUT_OPTION) $<

%.f:

%: %.f
#  recipe to execute (built-in):
	$(LINK.f) $^ $(LOADLIBES) $(LDLIBS) -o $@

%.o: %.f
#  recipe to execute (built-in):
	$(COMPILE.f) $(OUTPUT_OPTION) $<

%.F:

%: %.F
#  recipe to execute (built-in):
	$(LINK.F) $^ $(LOADLIBES) $(LDLIBS) -o $@

%.o: %.F
#  recipe to execute (built-in):
	$(COMPILE.F) $(OUTPUT_OPTION) $<

%.f: %.F
#  recipe to execute (built-in):
	$(PREPROCESS.F) $(OUTPUT_OPTION) $<

%.m:

%: %.m
#  recipe to execute (built-in):
	$(LINK.m) $^ $(LOADLIBES) $(LDLIBS) -o $@

%.o: %.m
#  recipe to execute (built-in):
	$(COMPILE.m) $(OUTPUT_OPTION) $<

%.r:

%: %.r
#  recipe to execute (built-in):
	$(LINK.r) $^ $(LOADLIBES) $(LDLIBS) -o $@

%.o: %.r
#  recipe to execute (built-in):
	$(COMPILE.r) $(OUTPUT_OPTION) $<

%.f: %.r
#  recipe to execute (built-in):
	$(PREPROCESS.r) $(OUTPUT_OPTION) $<

%.y:

%.ln: %.y
#  recipe to execute (built-in):
	$(YACC.y) $< 
	 $(LINT.c) -C$* y.tab.c 
	 $(RM) y.tab.c

%.c: %.y
#  recipe to execute (built-in):
	$(YACC.y) $< 
	 mv -f y.tab.c $@

%.l:

%.ln: %.l
#  recipe to execute (built-in):
	@$(RM) $*.c
	 $(LEX.l) $< > $*.c
	$(LINT.c) -i $*.c -o $@
	 $(RM) $*.c

%.c: %.l
#  recipe to execute (built-in):
	@$(RM) $@ 
	 $(LEX.l) $< > $@

%.r: %.l
#  recipe to execute (built-in):
	$(LEX.l) $< > $@ 
	 mv -f lex.yy.r $@

%.ym:

%.m: %.ym
#  recipe to execute (built-in):
	$(YACC.m) $< 
	 mv -f y.tab.c $@

%.yl:

%.s:

%: %.s
#  recipe to execute (built-in):
	$(LINK.s) $^ $(LOADLIBES) $(LDLIBS) -o $@

%.o: %.s
#  recipe to execute (built-in):
	$(COMPILE.s) -o $@ $<

%.S:

%: %.S
#  recipe to execute (built-in):
	$(LINK.S) $^ $(LOADLIBES) $(LDLIBS) -o $@

%.o: %.S
#  recipe to execute (built-in):
	$(COMPILE.S) -o $@ $<

%.s: %.S
#  recipe to execute (built-in):
	$(PREPROCESS.S) $< > $@

%.mod:

%: %.mod
#  recipe to execute (built-in):
	$(COMPILE.mod) -o $@ -e $@ $^

%.o: %.mod
#  recipe to execute (built-in):
	$(COMPILE.mod) -o $@ $<

%.sym:

%.def:

%.sym: %.def
#  recipe to execute (built-in):
	$(COMPILE.def) -o $@ $<

%.h:

%.info:

%.dvi:

%.tex:

%.dvi: %.tex
#  recipe to execute (built-in):
	$(TEX) $<

%.texinfo:

%.info: %.texinfo
#  recipe to execute (built-in):
	$(MAKEINFO) $(MAKEINFO_FLAGS) $< -o $@

%.dvi: %.texinfo
#  recipe to execute (built-in):
	$(TEXI2DVI) $(TEXI2DVI_FLAGS) $<

%.texi:

%.info: %.texi
#  recipe to execute (built-in):
	$(MAKEINFO) $(MAKEINFO_FLAGS) $< -o $@

%.dvi: %.texi
#  recipe to execute (built-in):
	$(TEXI2DVI) $(TEXI2DVI_FLAGS) $<

%.txinfo:

%.info: %.txinfo
#  recipe to execute (built-in):
	$(MAKEINFO) $(MAKEINFO_FLAGS) $< -o $@

%.dvi: %.txinfo
#  recipe to execute (built-in):
	$(TEXI2DVI) $(TEXI2DVI_FLAGS) $<

%.w:

%.c: %.w
#  recipe to execute (built-in):
	$(CTANGLE) $< - $@

%.tex: %.w
#  recipe to execute (built-in):
	$(CWEAVE) $< - $@

%.ch:

%.web:

%.p: %.web
#  recipe to execute (built-in):
	$(TANGLE) $<

%.tex: %.web
#  recipe to execute (built-in):
	$(WEAVE) $<

%.sh:

%: %.sh
#  recipe to execute (built-in):
	cat $< >$@ 
	 chmod a+x $@

%.elc:

%.el:

(%): %
#  recipe to execute (built-in):
	$(AR) $(ARFLAGS) $@ $<

%.out: %
#  recipe to execute (built-in):
	@rm -f $@ 
	 cp $< $@

%.c: %.w %.ch
#  recipe to execute (built-in):
	$(CTANGLE) $^ $@

%.tex: %.w %.ch
#  recipe to execute (built-in):
	$(CWEAVE) $^ $@

%:: %,v
#  recipe to execute (built-in):
	$(CHECKOUT,v)

%:: RCS/%,v
#  recipe to execute (built-in):
	$(CHECKOUT,v)

%:: RCS/%
#  recipe to execute (built-in):
	$(CHECKOUT,v)

%:: s.%
#  recipe to execute (built-in):
	$(GET) $(GFLAGS) $(SCCS_OUTPUT_OPTION) $<

%:: SCCS/s.%
#  recipe to execute (built-in):
	$(GET) $(GFLAGS) $(SCCS_OUTPUT_OPTION) $<

# 92 implicit rules, 5 (5.4%) terminal.
# Files

# Not a target:
.cpp:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(LINK.cpp) $^ $(LOADLIBES) $(LDLIBS) -o $@

lib/syntax_autogen.o: lib/syntax_autogen.cpp lib/syntax_autogen.cpp
#  Implicit rule search has been done.
#  Implicit/static pattern stem: 'lib/syntax_autogen'
#  File does not exist.
#  File has been updated.
#  Successfully updated.
# automatic
# @ := lib/syntax_autogen.o
# automatic
# * := lib/syntax_autogen
# automatic
# < := lib/syntax_autogen.cpp
# automatic
# + := lib/syntax_autogen.cpp lib/syntax_autogen.cpp
# automatic
# % := 
# automatic
# ^ := lib/syntax_autogen.cpp
# automatic
# ? := lib/syntax_autogen.cpp
# automatic
# | := 
# variable set hash-table stats:
# Load=8/32=25%, Rehash=0, Collisions=9/41=22%
#  recipe to execute (from 'Makefile', line 25):
	$(CC) -M $(CFLAGS) $< -o $(DEPSDIR)$(notdir $(@:.o=.d))
	echo "$(dir $<)" > line.tmp
	mv $(DEPSDIR)$(notdir $(@:.o=.d)) dependencies.tmp
	head -c -1 -q line.tmp dependencies.tmp > $(DEPSDIR)$(notdir $(@:.o=.d))
	rm dependencies.tmp line.tmp
	$(CC) -c $(CFLAGS) $< -o $(OBJDIR)$(notdir $@)

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:27
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
.c.o:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(COMPILE.c) $(OUTPUT_OPTION) $<

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\tr1\exp_integral.tcc:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:55
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\time.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\timeb_s.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:27
#  File has been updated.
#  Successfully updated.

# Not a target:
.h:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
codeGenerator/codeGenerator.cpp:
#  Implicit rule search has been done.
#  Last modified 2023-02-21 14:18:38
#  File has been updated.
#  Successfully updated.

# Not a target:
.sh:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	cat $< >$@ 
	 chmod a+x $@

# Not a target:
.ch:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\cstdlib:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:20:02
#  File has been updated.
#  Successfully updated.

_objs/:
#  Implicit rule search has not been done.
#  Last modified 2023-02-21 15:30:43
#  File has been updated.
#  Successfully updated.
#  recipe to execute (from 'Makefile', line 41):
	mkdir $(OBJDIR)

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\string.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_stat64.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
.r.f:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(PREPROCESS.r) $(OUTPUT_OPTION) $<

# Not a target:
.dvi:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
.def.sym:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(COMPILE.def) -o $@ $<

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\limits:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:20:03
#  File has been updated.
#  Successfully updated.

# Not a target:
_deps/frontMain.d:
#  Implicit rule search has been done.
#  Last modified 2023-02-21 15:30:42
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
.m.o:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(COMPILE.m) $(OUTPUT_OPTION) $<

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:10
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\bits\move.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:07
#  File has been updated.
#  Successfully updated.

codeGenerator/codeGenerator.o: codeGenerator/codeGenerator.cpp codeGenerator/codeGenerator.cpp c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\math.h c:\mingw\mingw\include\c++\11.2.0\cmath c:\mingw\mingw\include\c++\11.2.0\bits\cpp_type_traits.h c:\mingw\mingw\include\c++\11.2.0\ext\type_traits.h c:\mingw\mingw\x86_64-w64-mingw32\include\math.h c:\mingw\mingw\include\c++\11.2.0\bits\specfun.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_algobase.h c:\mingw\mingw\include\c++\11.2.0\bits\functexcept.h c:\mingw\mingw\include\c++\11.2.0\bits\exception_defines.h c:\mingw\mingw\include\c++\11.2.0\ext\numeric_traits.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_pair.h c:\mingw\mingw\include\c++\11.2.0\bits\move.h c:\mingw\mingw\include\c++\11.2.0\type_traits c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_types.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_funcs.h c:\mingw\mingw\include\c++\11.2.0\bits\concept_check.h c:\mingw\mingw\include\c++\11.2.0\debug\assertions.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator.h c:\mingw\mingw\include\c++\11.2.0\bits\ptr_traits.h c:\mingw\mingw\include\c++\11.2.0\debug\debug.h c:\mingw\mingw\include\c++\11.2.0\bits\predefined_ops.h c:\mingw\mingw\include\c++\11.2.0\limits c:\mingw\mingw\include\c++\11.2.0\tr1\gamma.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\special_function_util.h c:\mingw\mingw\include\c++\11.2.0\tr1\bessel_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\beta_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\ell_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\exp_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\hypergeometric.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\legendre_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\modified_bessel_func.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_hermite.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_laguerre.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\riemann_zeta.tcc c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\stat.h c:\mingw\mingw\x86_64-w64-mingw32\include\io.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\types.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_stat64.h codeGenerator/../lib/flog.h c:\mingw\mingw\include\c++\11.2.0\typeinfo c:\mingw\mingw\include\c++\11.2.0\bits\exception.h c:\mingw\mingw\include\c++\11.2.0\bits\hash_bytes.h c:\mingw\mingw\x86_64-w64-mingw32\include\time.h c:\mingw\mingw\x86_64-w64-mingw32\include\_timeval.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\timeb.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\timeb_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\pthread_time.h codeGenerator/../lib/text.h c:\mingw\mingw\x86_64-w64-mingw32\include\ctype.h
#  Implicit rule search has been done.
#  Implicit/static pattern stem: 'codeGenerator/codeGenerator'
#  File does not exist.
#  File has been updated.
#  Successfully updated.
# automatic
# @ := codeGenerator/codeGenerator.o
# automatic
# * := codeGenerator/codeGenerator
# automatic
# < := codeGenerator/codeGenerator.cpp
# automatic
# + := codeGenerator/codeGenerator.cpp codeGenerator/codeGenerator.cpp c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\math.h c:\mingw\mingw\include\c++\11.2.0\cmath c:\mingw\mingw\include\c++\11.2.0\bits\cpp_type_traits.h c:\mingw\mingw\include\c++\11.2.0\ext\type_traits.h c:\mingw\mingw\x86_64-w64-mingw32\include\math.h c:\mingw\mingw\include\c++\11.2.0\bits\specfun.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_algobase.h c:\mingw\mingw\include\c++\11.2.0\bits\functexcept.h c:\mingw\mingw\include\c++\11.2.0\bits\exception_defines.h c:\mingw\mingw\include\c++\11.2.0\ext\numeric_traits.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_pair.h c:\mingw\mingw\include\c++\11.2.0\bits\move.h c:\mingw\mingw\include\c++\11.2.0\type_traits c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_types.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_funcs.h c:\mingw\mingw\include\c++\11.2.0\bits\concept_check.h c:\mingw\mingw\include\c++\11.2.0\debug\assertions.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator.h c:\mingw\mingw\include\c++\11.2.0\bits\ptr_traits.h c:\mingw\mingw\include\c++\11.2.0\debug\debug.h c:\mingw\mingw\include\c++\11.2.0\bits\predefined_ops.h c:\mingw\mingw\include\c++\11.2.0\limits c:\mingw\mingw\include\c++\11.2.0\tr1\gamma.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\special_function_util.h c:\mingw\mingw\include\c++\11.2.0\tr1\bessel_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\beta_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\ell_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\exp_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\hypergeometric.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\legendre_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\modified_bessel_func.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_hermite.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_laguerre.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\riemann_zeta.tcc c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\stat.h c:\mingw\mingw\x86_64-w64-mingw32\include\io.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\types.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_stat64.h codeGenerator/../lib/flog.h c:\mingw\mingw\include\c++\11.2.0\typeinfo c:\mingw\mingw\include\c++\11.2.0\bits\exception.h c:\mingw\mingw\include\c++\11.2.0\bits\hash_bytes.h c:\mingw\mingw\x86_64-w64-mingw32\include\time.h c:\mingw\mingw\x86_64-w64-mingw32\include\_timeval.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\timeb.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\timeb_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\pthread_time.h codeGenerator/../lib/text.h c:\mingw\mingw\x86_64-w64-mingw32\include\ctype.h
# automatic
# % := 
# automatic
# ^ := codeGenerator/codeGenerator.cpp c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\math.h c:\mingw\mingw\include\c++\11.2.0\cmath c:\mingw\mingw\include\c++\11.2.0\bits\cpp_type_traits.h c:\mingw\mingw\include\c++\11.2.0\ext\type_traits.h c:\mingw\mingw\x86_64-w64-mingw32\include\math.h c:\mingw\mingw\include\c++\11.2.0\bits\specfun.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_algobase.h c:\mingw\mingw\include\c++\11.2.0\bits\functexcept.h c:\mingw\mingw\include\c++\11.2.0\bits\exception_defines.h c:\mingw\mingw\include\c++\11.2.0\ext\numeric_traits.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_pair.h c:\mingw\mingw\include\c++\11.2.0\bits\move.h c:\mingw\mingw\include\c++\11.2.0\type_traits c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_types.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_funcs.h c:\mingw\mingw\include\c++\11.2.0\bits\concept_check.h c:\mingw\mingw\include\c++\11.2.0\debug\assertions.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator.h c:\mingw\mingw\include\c++\11.2.0\bits\ptr_traits.h c:\mingw\mingw\include\c++\11.2.0\debug\debug.h c:\mingw\mingw\include\c++\11.2.0\bits\predefined_ops.h c:\mingw\mingw\include\c++\11.2.0\limits c:\mingw\mingw\include\c++\11.2.0\tr1\gamma.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\special_function_util.h c:\mingw\mingw\include\c++\11.2.0\tr1\bessel_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\beta_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\ell_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\exp_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\hypergeometric.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\legendre_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\modified_bessel_func.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_hermite.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_laguerre.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\riemann_zeta.tcc c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\stat.h c:\mingw\mingw\x86_64-w64-mingw32\include\io.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\types.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_stat64.h codeGenerator/../lib/flog.h c:\mingw\mingw\include\c++\11.2.0\typeinfo c:\mingw\mingw\include\c++\11.2.0\bits\exception.h c:\mingw\mingw\include\c++\11.2.0\bits\hash_bytes.h c:\mingw\mingw\x86_64-w64-mingw32\include\time.h c:\mingw\mingw\x86_64-w64-mingw32\include\_timeval.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\timeb.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\timeb_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\pthread_time.h codeGenerator/../lib/text.h c:\mingw\mingw\x86_64-w64-mingw32\include\ctype.h
# automatic
# ? := codeGenerator/codeGenerator.cpp c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\math.h c:\mingw\mingw\include\c++\11.2.0\cmath c:\mingw\mingw\include\c++\11.2.0\bits\cpp_type_traits.h c:\mingw\mingw\include\c++\11.2.0\ext\type_traits.h c:\mingw\mingw\x86_64-w64-mingw32\include\math.h c:\mingw\mingw\include\c++\11.2.0\bits\specfun.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_algobase.h c:\mingw\mingw\include\c++\11.2.0\bits\functexcept.h c:\mingw\mingw\include\c++\11.2.0\bits\exception_defines.h c:\mingw\mingw\include\c++\11.2.0\ext\numeric_traits.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_pair.h c:\mingw\mingw\include\c++\11.2.0\bits\move.h c:\mingw\mingw\include\c++\11.2.0\type_traits c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_types.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_funcs.h c:\mingw\mingw\include\c++\11.2.0\bits\concept_check.h c:\mingw\mingw\include\c++\11.2.0\debug\assertions.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator.h c:\mingw\mingw\include\c++\11.2.0\bits\ptr_traits.h c:\mingw\mingw\include\c++\11.2.0\debug\debug.h c:\mingw\mingw\include\c++\11.2.0\bits\predefined_ops.h c:\mingw\mingw\include\c++\11.2.0\limits c:\mingw\mingw\include\c++\11.2.0\tr1\gamma.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\special_function_util.h c:\mingw\mingw\include\c++\11.2.0\tr1\bessel_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\beta_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\ell_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\exp_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\hypergeometric.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\legendre_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\modified_bessel_func.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_hermite.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_laguerre.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\riemann_zeta.tcc c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\stat.h c:\mingw\mingw\x86_64-w64-mingw32\include\io.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\types.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_stat64.h codeGenerator/../lib/flog.h c:\mingw\mingw\include\c++\11.2.0\typeinfo c:\mingw\mingw\include\c++\11.2.0\bits\exception.h c:\mingw\mingw\include\c++\11.2.0\bits\hash_bytes.h c:\mingw\mingw\x86_64-w64-mingw32\include\time.h c:\mingw\mingw\x86_64-w64-mingw32\include\_timeval.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\timeb.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\timeb_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\pthread_time.h codeGenerator/../lib/text.h c:\mingw\mingw\x86_64-w64-mingw32\include\ctype.h
# automatic
# | := 
# variable set hash-table stats:
# Load=8/32=25%, Rehash=0, Collisions=9/41=22%
#  recipe to execute (from 'Makefile', line 25):
	$(CC) -M $(CFLAGS) $< -o $(DEPSDIR)$(notdir $(@:.o=.d))
	echo "$(dir $<)" > line.tmp
	mv $(DEPSDIR)$(notdir $(@:.o=.d)) dependencies.tmp
	head -c -1 -q line.tmp dependencies.tmp > $(DEPSDIR)$(notdir $(@:.o=.d))
	rm dependencies.tmp line.tmp
	$(CC) -c $(CFLAGS) $< -o $(OBJDIR)$(notdir $@)

# Not a target:
.lm.m:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	@$(RM) $@ 
	 $(LEX.m) $< > $@

# Not a target:
.p.o:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(COMPILE.p) $(OUTPUT_OPTION) $<

# Not a target:
front/front_autogen_cpp.h:
#  Implicit rule search has been done.
#  Last modified 2023-02-21 13:56:32
#  File has been updated.
#  Successfully updated.

# Not a target:
.texinfo:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
.ln:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
front/../lib/enum_autogen.h:
#  Implicit rule search has been done.
#  Last modified 2023-02-21 01:10:52
#  File has been updated.
#  Successfully updated.

# Not a target:
.C:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(LINK.C) $^ $(LOADLIBES) $(LDLIBS) -o $@

# Not a target:
.web:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:08:18
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\math.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
front/front.cpp:
#  Implicit rule search has been done.
#  Last modified 2023-02-20 23:45:42
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\bits\ptr_traits.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:08
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\tr1\legendre_function.tcc:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:56
#  File has been updated.
#  Successfully updated.

# Not a target:
.elc:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
.y.ln:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(YACC.y) $< 
	 $(LINT.c) -C$* y.tab.c 
	 $(RM) y.tab.c

# Not a target:
.l.c:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	@$(RM) $@ 
	 $(LEX.l) $< > $@

# Not a target:
Makefile:
#  Implicit rule search has been done.
#  Last modified 2023-02-21 15:30:38
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
.sym:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
.r.o:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(COMPILE.r) $(OUTPUT_OPTION) $<

# Not a target:
lib/text.h:
#  Implicit rule search has been done.
#  Last modified 2023-02-21 14:38:13
#  File has been updated.
#  Successfully updated.

# Not a target:
.mod:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(COMPILE.mod) -o $@ -e $@ $^

# Not a target:
.def:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_types.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:10
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\sys\timeb.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:27
#  File has been updated.
#  Successfully updated.

# Not a target:
.S:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(LINK.S) $^ $(LOADLIBES) $(LDLIBS) -o $@

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\tr1\ell_integral.tcc:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:55
#  File has been updated.
#  Successfully updated.

# Not a target:
.texi.dvi:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(TEXI2DVI) $(TEXI2DVI_FLAGS) $<

# Not a target:
_deps/syntax_autogen.d:
#  Implicit rule search has been done.
#  Last modified 2023-02-21 15:30:41
#  File has been updated.
#  Successfully updated.

# Not a target:
_deps/text.d:
#  Implicit rule search has been done.
#  Last modified 2023-02-21 15:30:40
#  File has been updated.
#  Successfully updated.

# Not a target:
.txinfo.dvi:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(TEXI2DVI) $(TEXI2DVI_FLAGS) $<

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\bits\stl_algobase.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:09
#  File has been updated.
#  Successfully updated.

# Not a target:
lib/flog.h:
#  Implicit rule search has been done.
#  Last modified 2023-02-20 23:36:13
#  File has been updated.
#  Successfully updated.

# Not a target:
front/front.h:
#  Implicit rule search has been done.
#  Last modified 2023-02-21 15:10:27
#  File has been updated.
#  Successfully updated.

# Not a target:
.y.c:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(YACC.y) $< 
	 mv -f y.tab.c $@

clean:
#  Phony target (prerequisite of .PHONY).
#  Implicit rule search has not been done.
#  File does not exist.
#  File has not been updated.
#  recipe to execute (from 'Makefile', line 44):
	rm -rf $(DEPSDIR) $(OBJDIR)
	rm -rf *.exe* *.png *.dot
	clear

lib/flog.o: lib/flog.cpp lib/flog.cpp lib/flog.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\include\c++\11.2.0\typeinfo c:\mingw\mingw\include\c++\11.2.0\bits\exception.h c:\mingw\mingw\include\c++\11.2.0\bits\hash_bytes.h c:\mingw\mingw\x86_64-w64-mingw32\include\time.h c:\mingw\mingw\x86_64-w64-mingw32\include\_timeval.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\timeb.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\timeb_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\pthread_time.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h
#  Implicit rule search has been done.
#  Implicit/static pattern stem: 'lib/flog'
#  File does not exist.
#  File has been updated.
#  Successfully updated.
# automatic
# @ := lib/flog.o
# automatic
# * := lib/flog
# automatic
# < := lib/flog.cpp
# automatic
# + := lib/flog.cpp lib/flog.cpp lib/flog.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\include\c++\11.2.0\typeinfo c:\mingw\mingw\include\c++\11.2.0\bits\exception.h c:\mingw\mingw\include\c++\11.2.0\bits\hash_bytes.h c:\mingw\mingw\x86_64-w64-mingw32\include\time.h c:\mingw\mingw\x86_64-w64-mingw32\include\_timeval.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\timeb.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\timeb_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\pthread_time.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h
# automatic
# % := 
# automatic
# ^ := lib/flog.cpp lib/flog.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\include\c++\11.2.0\typeinfo c:\mingw\mingw\include\c++\11.2.0\bits\exception.h c:\mingw\mingw\include\c++\11.2.0\bits\hash_bytes.h c:\mingw\mingw\x86_64-w64-mingw32\include\time.h c:\mingw\mingw\x86_64-w64-mingw32\include\_timeval.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\timeb.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\timeb_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\pthread_time.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h
# automatic
# ? := lib/flog.cpp lib/flog.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\include\c++\11.2.0\typeinfo c:\mingw\mingw\include\c++\11.2.0\bits\exception.h c:\mingw\mingw\include\c++\11.2.0\bits\hash_bytes.h c:\mingw\mingw\x86_64-w64-mingw32\include\time.h c:\mingw\mingw\x86_64-w64-mingw32\include\_timeval.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\timeb.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\timeb_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\pthread_time.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h
# automatic
# | := 
# variable set hash-table stats:
# Load=8/32=25%, Rehash=0, Collisions=9/41=22%
#  recipe to execute (from 'Makefile', line 25):
	$(CC) -M $(CFLAGS) $< -o $(DEPSDIR)$(notdir $(@:.o=.d))
	echo "$(dir $<)" > line.tmp
	mv $(DEPSDIR)$(notdir $(@:.o=.d)) dependencies.tmp
	head -c -1 -q line.tmp dependencies.tmp > $(DEPSDIR)$(notdir $(@:.o=.d))
	rm dependencies.tmp line.tmp
	$(CC) -c $(CFLAGS) $< -o $(OBJDIR)$(notdir $@)

# Not a target:
front/../lib/nbtree.h:
#  Implicit rule search has been done.
#  Last modified 2023-02-20 23:56:44
#  File has been updated.
#  Successfully updated.

# Not a target:
.cpp.o:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(COMPILE.cpp) $(OUTPUT_OPTION) $<

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\pthread_time.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:49:53
#  File has been updated.
#  Successfully updated.

# Not a target:
front/../lib/syntax_autogen.h:
#  Implicit rule search has been done.
#  Last modified 2023-02-21 01:10:52
#  File has been updated.
#  Successfully updated.

# Not a target:
.el:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
.cc:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(LINK.cc) $^ $(LOADLIBES) $(LDLIBS) -o $@

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:27
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\ext\numeric_traits.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:13
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:20:09
#  File has been updated.
#  Successfully updated.

# Not a target:
.tex:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\tr1\riemann_zeta.tcc:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:56
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\bits\predefined_ops.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:08
#  File has been updated.
#  Successfully updated.

# Not a target:
.m:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(LINK.m) $^ $(LOADLIBES) $(LDLIBS) -o $@

# Not a target:
lib/syntax_autogen.cpp:
#  Implicit rule search has been done.
#  Last modified 2023-02-21 01:10:52
#  File has been updated.
#  Successfully updated.

# Not a target:
.F:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(LINK.F) $^ $(LOADLIBES) $(LDLIBS) -o $@

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
.web.tex:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(WEAVE) $<

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
.texinfo.info:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(MAKEINFO) $(MAKEINFO_FLAGS) $< -o $@

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\tr1\bessel_function.tcc:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:54
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:20:09
#  File has been updated.
#  Successfully updated.

# Not a target:
.ym.m:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(YACC.m) $< 
	 mv -f y.tab.c $@

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\tr1\gamma.tcc:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:55
#  File has been updated.
#  Successfully updated.

lib/text.o: lib/text.cpp lib/text.cpp lib/text.h c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\math.h c:\mingw\mingw\include\c++\11.2.0\cmath c:\mingw\mingw\include\c++\11.2.0\bits\cpp_type_traits.h c:\mingw\mingw\include\c++\11.2.0\ext\type_traits.h c:\mingw\mingw\x86_64-w64-mingw32\include\math.h c:\mingw\mingw\include\c++\11.2.0\bits\specfun.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_algobase.h c:\mingw\mingw\include\c++\11.2.0\bits\functexcept.h c:\mingw\mingw\include\c++\11.2.0\bits\exception_defines.h c:\mingw\mingw\include\c++\11.2.0\ext\numeric_traits.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_pair.h c:\mingw\mingw\include\c++\11.2.0\bits\move.h c:\mingw\mingw\include\c++\11.2.0\type_traits c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_types.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_funcs.h c:\mingw\mingw\include\c++\11.2.0\bits\concept_check.h c:\mingw\mingw\include\c++\11.2.0\debug\assertions.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator.h c:\mingw\mingw\include\c++\11.2.0\bits\ptr_traits.h c:\mingw\mingw\include\c++\11.2.0\debug\debug.h c:\mingw\mingw\include\c++\11.2.0\bits\predefined_ops.h c:\mingw\mingw\include\c++\11.2.0\limits c:\mingw\mingw\include\c++\11.2.0\tr1\gamma.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\special_function_util.h c:\mingw\mingw\include\c++\11.2.0\tr1\bessel_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\beta_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\ell_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\exp_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\hypergeometric.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\legendre_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\modified_bessel_func.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_hermite.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_laguerre.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\riemann_zeta.tcc c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\stat.h c:\mingw\mingw\x86_64-w64-mingw32\include\io.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\types.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_stat64.h c:\mingw\mingw\x86_64-w64-mingw32\include\ctype.h
#  Implicit rule search has been done.
#  Implicit/static pattern stem: 'lib/text'
#  File does not exist.
#  File has been updated.
#  Successfully updated.
# automatic
# @ := lib/text.o
# automatic
# * := lib/text
# automatic
# < := lib/text.cpp
# automatic
# + := lib/text.cpp lib/text.cpp lib/text.h c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\math.h c:\mingw\mingw\include\c++\11.2.0\cmath c:\mingw\mingw\include\c++\11.2.0\bits\cpp_type_traits.h c:\mingw\mingw\include\c++\11.2.0\ext\type_traits.h c:\mingw\mingw\x86_64-w64-mingw32\include\math.h c:\mingw\mingw\include\c++\11.2.0\bits\specfun.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_algobase.h c:\mingw\mingw\include\c++\11.2.0\bits\functexcept.h c:\mingw\mingw\include\c++\11.2.0\bits\exception_defines.h c:\mingw\mingw\include\c++\11.2.0\ext\numeric_traits.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_pair.h c:\mingw\mingw\include\c++\11.2.0\bits\move.h c:\mingw\mingw\include\c++\11.2.0\type_traits c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_types.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_funcs.h c:\mingw\mingw\include\c++\11.2.0\bits\concept_check.h c:\mingw\mingw\include\c++\11.2.0\debug\assertions.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator.h c:\mingw\mingw\include\c++\11.2.0\bits\ptr_traits.h c:\mingw\mingw\include\c++\11.2.0\debug\debug.h c:\mingw\mingw\include\c++\11.2.0\bits\predefined_ops.h c:\mingw\mingw\include\c++\11.2.0\limits c:\mingw\mingw\include\c++\11.2.0\tr1\gamma.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\special_function_util.h c:\mingw\mingw\include\c++\11.2.0\tr1\bessel_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\beta_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\ell_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\exp_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\hypergeometric.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\legendre_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\modified_bessel_func.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_hermite.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_laguerre.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\riemann_zeta.tcc c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\stat.h c:\mingw\mingw\x86_64-w64-mingw32\include\io.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\types.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_stat64.h c:\mingw\mingw\x86_64-w64-mingw32\include\ctype.h
# automatic
# % := 
# automatic
# ^ := lib/text.cpp lib/text.h c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\math.h c:\mingw\mingw\include\c++\11.2.0\cmath c:\mingw\mingw\include\c++\11.2.0\bits\cpp_type_traits.h c:\mingw\mingw\include\c++\11.2.0\ext\type_traits.h c:\mingw\mingw\x86_64-w64-mingw32\include\math.h c:\mingw\mingw\include\c++\11.2.0\bits\specfun.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_algobase.h c:\mingw\mingw\include\c++\11.2.0\bits\functexcept.h c:\mingw\mingw\include\c++\11.2.0\bits\exception_defines.h c:\mingw\mingw\include\c++\11.2.0\ext\numeric_traits.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_pair.h c:\mingw\mingw\include\c++\11.2.0\bits\move.h c:\mingw\mingw\include\c++\11.2.0\type_traits c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_types.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_funcs.h c:\mingw\mingw\include\c++\11.2.0\bits\concept_check.h c:\mingw\mingw\include\c++\11.2.0\debug\assertions.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator.h c:\mingw\mingw\include\c++\11.2.0\bits\ptr_traits.h c:\mingw\mingw\include\c++\11.2.0\debug\debug.h c:\mingw\mingw\include\c++\11.2.0\bits\predefined_ops.h c:\mingw\mingw\include\c++\11.2.0\limits c:\mingw\mingw\include\c++\11.2.0\tr1\gamma.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\special_function_util.h c:\mingw\mingw\include\c++\11.2.0\tr1\bessel_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\beta_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\ell_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\exp_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\hypergeometric.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\legendre_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\modified_bessel_func.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_hermite.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_laguerre.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\riemann_zeta.tcc c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\stat.h c:\mingw\mingw\x86_64-w64-mingw32\include\io.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\types.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_stat64.h c:\mingw\mingw\x86_64-w64-mingw32\include\ctype.h
# automatic
# ? := lib/text.cpp lib/text.h c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\math.h c:\mingw\mingw\include\c++\11.2.0\cmath c:\mingw\mingw\include\c++\11.2.0\bits\cpp_type_traits.h c:\mingw\mingw\include\c++\11.2.0\ext\type_traits.h c:\mingw\mingw\x86_64-w64-mingw32\include\math.h c:\mingw\mingw\include\c++\11.2.0\bits\specfun.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_algobase.h c:\mingw\mingw\include\c++\11.2.0\bits\functexcept.h c:\mingw\mingw\include\c++\11.2.0\bits\exception_defines.h c:\mingw\mingw\include\c++\11.2.0\ext\numeric_traits.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_pair.h c:\mingw\mingw\include\c++\11.2.0\bits\move.h c:\mingw\mingw\include\c++\11.2.0\type_traits c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_types.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_funcs.h c:\mingw\mingw\include\c++\11.2.0\bits\concept_check.h c:\mingw\mingw\include\c++\11.2.0\debug\assertions.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator.h c:\mingw\mingw\include\c++\11.2.0\bits\ptr_traits.h c:\mingw\mingw\include\c++\11.2.0\debug\debug.h c:\mingw\mingw\include\c++\11.2.0\bits\predefined_ops.h c:\mingw\mingw\include\c++\11.2.0\limits c:\mingw\mingw\include\c++\11.2.0\tr1\gamma.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\special_function_util.h c:\mingw\mingw\include\c++\11.2.0\tr1\bessel_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\beta_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\ell_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\exp_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\hypergeometric.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\legendre_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\modified_bessel_func.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_hermite.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_laguerre.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\riemann_zeta.tcc c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\stat.h c:\mingw\mingw\x86_64-w64-mingw32\include\io.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\types.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_stat64.h c:\mingw\mingw\x86_64-w64-mingw32\include\ctype.h
# automatic
# | := 
# variable set hash-table stats:
# Load=8/32=25%, Rehash=0, Collisions=9/41=22%
#  recipe to execute (from 'Makefile', line 25):
	$(CC) -M $(CFLAGS) $< -o $(DEPSDIR)$(notdir $(@:.o=.d))
	echo "$(dir $<)" > line.tmp
	mv $(DEPSDIR)$(notdir $(@:.o=.d)) dependencies.tmp
	head -c -1 -q line.tmp dependencies.tmp > $(DEPSDIR)$(notdir $(@:.o=.d))
	rm dependencies.tmp line.tmp
	$(CC) -c $(CFLAGS) $< -o $(OBJDIR)$(notdir $@)

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\ext\type_traits.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:14
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\io.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
front/../lib/flog.h:
#  Implicit rule search has been done.
#  Last modified 2023-02-20 23:36:13
#  File has been updated.
#  Successfully updated.

# Not a target:
_deps/flog.d:
#  Implicit rule search has been done.
#  Last modified 2023-02-21 15:30:40
#  File has been updated.
#  Successfully updated.

# Not a target:
.l:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_funcs.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:10
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\bits\exception_defines.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:20:12
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\bits\stl_pair.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:10
#  File has been updated.
#  Successfully updated.

# Not a target:
.f:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(LINK.f) $^ $(LOADLIBES) $(LDLIBS) -o $@

# Not a target:
.texi:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\bits\concept_check.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:06
#  File has been updated.
#  Successfully updated.

# Not a target:
.DEFAULT:
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
lib/text.cpp:
#  Implicit rule search has been done.
#  Last modified 2023-02-20 23:06:48
#  File has been updated.
#  Successfully updated.

# Not a target:
.r:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(LINK.r) $^ $(LOADLIBES) $(LDLIBS) -o $@

# Not a target:
.a:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

all: _objs/ _deps/ lib/flog.o lib/text.o lib/syntax_autogen.o front/front.o front/frontMain.o codeGenerator/codeGenerator.o front
#  Implicit rule search has been done.
#  File does not exist.
#  File has been updated.
#  Successfully updated.
# variable set hash-table stats:
# Load=0/32=0%, Rehash=0, Collisions=0/163=0%

# Not a target:
.w.tex:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(CWEAVE) $< - $@

# Not a target:
.s.o:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(COMPILE.s) -o $@ $<

# Not a target:
.txinfo:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
.c.ln:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(LINT.c) -C$* $<

# Not a target:
.tex.dvi:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(TEX) $<

# Not a target:
.info:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
.out:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
.texinfo.dvi:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(TEXI2DVI) $(TEXI2DVI_FLAGS) $<

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\tr1\modified_bessel_func.tcc:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:56
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\tr1\poly_laguerre.tcc:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:56
#  File has been updated.
#  Successfully updated.

# Not a target:
.F.o:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(COMPILE.F) $(OUTPUT_OPTION) $<

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:27
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\bits\exception.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:20:12
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\ctype.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\bits\functexcept.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:06
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\tr1\poly_hermite.tcc:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:56
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\bits\cpp_type_traits.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:06
#  File has been updated.
#  Successfully updated.

# Not a target:
codeGenerator/../lib/text.h:
#  Implicit rule search has been done.
#  Last modified 2023-02-21 14:38:13
#  File has been updated.
#  Successfully updated.

# Not a target:
.yl:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:20:11
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\sys\types.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:27
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\stdlib.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:20:02
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\type_traits:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:20:05
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:20:09
#  File has been updated.
#  Successfully updated.

# Not a target:
.s:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(LINK.s) $^ $(LOADLIBES) $(LDLIBS) -o $@

front/frontMain.o: front/frontMain.cpp front/frontMain.cpp front/front.h c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\math.h c:\mingw\mingw\include\c++\11.2.0\cmath c:\mingw\mingw\include\c++\11.2.0\bits\cpp_type_traits.h c:\mingw\mingw\include\c++\11.2.0\ext\type_traits.h c:\mingw\mingw\x86_64-w64-mingw32\include\math.h c:\mingw\mingw\include\c++\11.2.0\bits\specfun.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_algobase.h c:\mingw\mingw\include\c++\11.2.0\bits\functexcept.h c:\mingw\mingw\include\c++\11.2.0\bits\exception_defines.h c:\mingw\mingw\include\c++\11.2.0\ext\numeric_traits.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_pair.h c:\mingw\mingw\include\c++\11.2.0\bits\move.h c:\mingw\mingw\include\c++\11.2.0\type_traits c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_types.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_funcs.h c:\mingw\mingw\include\c++\11.2.0\bits\concept_check.h c:\mingw\mingw\include\c++\11.2.0\debug\assertions.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator.h c:\mingw\mingw\include\c++\11.2.0\bits\ptr_traits.h c:\mingw\mingw\include\c++\11.2.0\debug\debug.h c:\mingw\mingw\include\c++\11.2.0\bits\predefined_ops.h c:\mingw\mingw\include\c++\11.2.0\limits c:\mingw\mingw\include\c++\11.2.0\tr1\gamma.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\special_function_util.h c:\mingw\mingw\include\c++\11.2.0\tr1\bessel_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\beta_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\ell_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\exp_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\hypergeometric.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\legendre_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\modified_bessel_func.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_hermite.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_laguerre.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\riemann_zeta.tcc c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\stat.h c:\mingw\mingw\x86_64-w64-mingw32\include\io.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\types.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_stat64.h front/../lib/nbtree.h front/../lib/flog.h c:\mingw\mingw\include\c++\11.2.0\typeinfo c:\mingw\mingw\include\c++\11.2.0\bits\exception.h c:\mingw\mingw\include\c++\11.2.0\bits\hash_bytes.h c:\mingw\mingw\x86_64-w64-mingw32\include\time.h c:\mingw\mingw\x86_64-w64-mingw32\include\_timeval.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\timeb.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\timeb_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\pthread_time.h front/../lib/stack.h front/../lib/enum_autogen.h front/../lib/syntax_autogen.h front/front_autogen.h
#  Implicit rule search has been done.
#  Implicit/static pattern stem: 'front/frontMain'
#  File does not exist.
#  File has been updated.
#  Successfully updated.
# automatic
# @ := front/frontMain.o
# automatic
# * := front/frontMain
# automatic
# < := front/frontMain.cpp
# automatic
# + := front/frontMain.cpp front/frontMain.cpp front/front.h c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\math.h c:\mingw\mingw\include\c++\11.2.0\cmath c:\mingw\mingw\include\c++\11.2.0\bits\cpp_type_traits.h c:\mingw\mingw\include\c++\11.2.0\ext\type_traits.h c:\mingw\mingw\x86_64-w64-mingw32\include\math.h c:\mingw\mingw\include\c++\11.2.0\bits\specfun.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_algobase.h c:\mingw\mingw\include\c++\11.2.0\bits\functexcept.h c:\mingw\mingw\include\c++\11.2.0\bits\exception_defines.h c:\mingw\mingw\include\c++\11.2.0\ext\numeric_traits.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_pair.h c:\mingw\mingw\include\c++\11.2.0\bits\move.h c:\mingw\mingw\include\c++\11.2.0\type_traits c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_types.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_funcs.h c:\mingw\mingw\include\c++\11.2.0\bits\concept_check.h c:\mingw\mingw\include\c++\11.2.0\debug\assertions.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator.h c:\mingw\mingw\include\c++\11.2.0\bits\ptr_traits.h c:\mingw\mingw\include\c++\11.2.0\debug\debug.h c:\mingw\mingw\include\c++\11.2.0\bits\predefined_ops.h c:\mingw\mingw\include\c++\11.2.0\limits c:\mingw\mingw\include\c++\11.2.0\tr1\gamma.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\special_function_util.h c:\mingw\mingw\include\c++\11.2.0\tr1\bessel_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\beta_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\ell_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\exp_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\hypergeometric.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\legendre_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\modified_bessel_func.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_hermite.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_laguerre.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\riemann_zeta.tcc c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\stat.h c:\mingw\mingw\x86_64-w64-mingw32\include\io.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\types.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_stat64.h front/../lib/nbtree.h front/../lib/flog.h c:\mingw\mingw\include\c++\11.2.0\typeinfo c:\mingw\mingw\include\c++\11.2.0\bits\exception.h c:\mingw\mingw\include\c++\11.2.0\bits\hash_bytes.h c:\mingw\mingw\x86_64-w64-mingw32\include\time.h c:\mingw\mingw\x86_64-w64-mingw32\include\_timeval.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\timeb.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\timeb_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\pthread_time.h front/../lib/stack.h front/../lib/enum_autogen.h front/../lib/syntax_autogen.h front/front_autogen.h
# automatic
# % := 
# automatic
# ^ := front/frontMain.cpp front/front.h c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\math.h c:\mingw\mingw\include\c++\11.2.0\cmath c:\mingw\mingw\include\c++\11.2.0\bits\cpp_type_traits.h c:\mingw\mingw\include\c++\11.2.0\ext\type_traits.h c:\mingw\mingw\x86_64-w64-mingw32\include\math.h c:\mingw\mingw\include\c++\11.2.0\bits\specfun.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_algobase.h c:\mingw\mingw\include\c++\11.2.0\bits\functexcept.h c:\mingw\mingw\include\c++\11.2.0\bits\exception_defines.h c:\mingw\mingw\include\c++\11.2.0\ext\numeric_traits.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_pair.h c:\mingw\mingw\include\c++\11.2.0\bits\move.h c:\mingw\mingw\include\c++\11.2.0\type_traits c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_types.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_funcs.h c:\mingw\mingw\include\c++\11.2.0\bits\concept_check.h c:\mingw\mingw\include\c++\11.2.0\debug\assertions.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator.h c:\mingw\mingw\include\c++\11.2.0\bits\ptr_traits.h c:\mingw\mingw\include\c++\11.2.0\debug\debug.h c:\mingw\mingw\include\c++\11.2.0\bits\predefined_ops.h c:\mingw\mingw\include\c++\11.2.0\limits c:\mingw\mingw\include\c++\11.2.0\tr1\gamma.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\special_function_util.h c:\mingw\mingw\include\c++\11.2.0\tr1\bessel_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\beta_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\ell_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\exp_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\hypergeometric.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\legendre_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\modified_bessel_func.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_hermite.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_laguerre.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\riemann_zeta.tcc c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\stat.h c:\mingw\mingw\x86_64-w64-mingw32\include\io.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\types.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_stat64.h front/../lib/nbtree.h front/../lib/flog.h c:\mingw\mingw\include\c++\11.2.0\typeinfo c:\mingw\mingw\include\c++\11.2.0\bits\exception.h c:\mingw\mingw\include\c++\11.2.0\bits\hash_bytes.h c:\mingw\mingw\x86_64-w64-mingw32\include\time.h c:\mingw\mingw\x86_64-w64-mingw32\include\_timeval.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\timeb.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\timeb_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\pthread_time.h front/../lib/stack.h front/../lib/enum_autogen.h front/../lib/syntax_autogen.h front/front_autogen.h
# automatic
# ? := front/frontMain.cpp front/front.h c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\math.h c:\mingw\mingw\include\c++\11.2.0\cmath c:\mingw\mingw\include\c++\11.2.0\bits\cpp_type_traits.h c:\mingw\mingw\include\c++\11.2.0\ext\type_traits.h c:\mingw\mingw\x86_64-w64-mingw32\include\math.h c:\mingw\mingw\include\c++\11.2.0\bits\specfun.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_algobase.h c:\mingw\mingw\include\c++\11.2.0\bits\functexcept.h c:\mingw\mingw\include\c++\11.2.0\bits\exception_defines.h c:\mingw\mingw\include\c++\11.2.0\ext\numeric_traits.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_pair.h c:\mingw\mingw\include\c++\11.2.0\bits\move.h c:\mingw\mingw\include\c++\11.2.0\type_traits c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_types.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_funcs.h c:\mingw\mingw\include\c++\11.2.0\bits\concept_check.h c:\mingw\mingw\include\c++\11.2.0\debug\assertions.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator.h c:\mingw\mingw\include\c++\11.2.0\bits\ptr_traits.h c:\mingw\mingw\include\c++\11.2.0\debug\debug.h c:\mingw\mingw\include\c++\11.2.0\bits\predefined_ops.h c:\mingw\mingw\include\c++\11.2.0\limits c:\mingw\mingw\include\c++\11.2.0\tr1\gamma.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\special_function_util.h c:\mingw\mingw\include\c++\11.2.0\tr1\bessel_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\beta_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\ell_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\exp_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\hypergeometric.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\legendre_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\modified_bessel_func.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_hermite.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_laguerre.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\riemann_zeta.tcc c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\stat.h c:\mingw\mingw\x86_64-w64-mingw32\include\io.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\types.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_stat64.h front/../lib/nbtree.h front/../lib/flog.h c:\mingw\mingw\include\c++\11.2.0\typeinfo c:\mingw\mingw\include\c++\11.2.0\bits\exception.h c:\mingw\mingw\include\c++\11.2.0\bits\hash_bytes.h c:\mingw\mingw\x86_64-w64-mingw32\include\time.h c:\mingw\mingw\x86_64-w64-mingw32\include\_timeval.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\timeb.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\timeb_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\pthread_time.h front/../lib/stack.h front/../lib/enum_autogen.h front/../lib/syntax_autogen.h front/front_autogen.h
# automatic
# | := 
# variable set hash-table stats:
# Load=8/32=25%, Rehash=0, Collisions=9/41=22%
#  recipe to execute (from 'Makefile', line 25):
	$(CC) -M $(CFLAGS) $< -o $(DEPSDIR)$(notdir $(@:.o=.d))
	echo "$(dir $<)" > line.tmp
	mv $(DEPSDIR)$(notdir $(@:.o=.d)) dependencies.tmp
	head -c -1 -q line.tmp dependencies.tmp > $(DEPSDIR)$(notdir $(@:.o=.d))
	rm dependencies.tmp line.tmp
	$(CC) -c $(CFLAGS) $< -o $(OBJDIR)$(notdir $@)

# Not a target:
front/front_autogen.h:
#  Implicit rule search has been done.
#  Last modified 2023-02-21 01:10:52
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
.S.o:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(COMPILE.S) -o $@ $<

# Not a target:
c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:07:53
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:09
#  File has been updated.
#  Successfully updated.

# Not a target:
.o:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(LINK.o) $^ $(LOADLIBES) $(LDLIBS) -o $@

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\math.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:20:02
#  File has been updated.
#  Successfully updated.

# Not a target:
_deps/front.d:
#  Implicit rule search has been done.
#  Last modified 2023-02-21 15:30:41
#  File has been updated.
#  Successfully updated.

# Not a target:
front/frontMain.cpp:
#  Implicit rule search has been done.
#  Last modified 2023-02-21 15:16:20
#  File has been updated.
#  Successfully updated.

# Not a target:
.C.o:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(COMPILE.C) $(OUTPUT_OPTION) $<

# Not a target:
.c:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(LINK.c) $^ $(LOADLIBES) $(LDLIBS) -o $@

# Not a target:
.txinfo.info:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(MAKEINFO) $(MAKEINFO_FLAGS) $< -o $@

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\debug\assertions.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:20:05
#  File has been updated.
#  Successfully updated.

# Not a target:
.texi.info:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(MAKEINFO) $(MAKEINFO_FLAGS) $< -o $@

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\_timeval.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\bits\specfun.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:09
#  File has been updated.
#  Successfully updated.

# Not a target:
codeGenerator/../lib/flog.h:
#  Implicit rule search has been done.
#  Last modified 2023-02-20 23:36:13
#  File has been updated.
#  Successfully updated.

# Not a target:
.y:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:28
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\typeinfo:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:20:12
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\tr1\beta_function.tcc:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:54
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:08:17
#  File has been updated.
#  Successfully updated.

# Not a target:
.l.r:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(LEX.l) $< > $@ 
	 mv -f lex.yy.r $@

# Not a target:
.p:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(LINK.p) $^ $(LOADLIBES) $(LDLIBS) -o $@

# Not a target:
_deps/codeGenerator.d:
#  Implicit rule search has been done.
#  Last modified 2023-02-21 15:30:43
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\debug\debug.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:20:05
#  File has been updated.
#  Successfully updated.

# Not a target:
.l.ln:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	@$(RM) $*.c
	 $(LEX.l) $< > $*.c
	$(LINT.c) -i $*.c -o $@
	 $(RM) $*.c

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:32
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\bits\hash_bytes.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:20:12
#  File has been updated.
#  Successfully updated.

# Not a target:
front/../lib/stack.h:
#  Implicit rule search has been done.
#  Last modified 2023-02-20 12:33:00
#  File has been updated.
#  Successfully updated.

# Not a target:
.w:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

front: lib/flog.o lib/text.o lib/syntax_autogen.o front/front.o front/frontMain.o
#  Implicit rule search has not been done.
#  Implicit/static pattern stem: ''
#  Last modified 2023-02-21 13:49:06
#  File has been updated.
#  Successfully updated.
# automatic
# @ := front
# automatic
# * := 
# automatic
# < := lib/flog.o
# automatic
# + := lib/flog.o lib/text.o lib/syntax_autogen.o front/front.o front/frontMain.o
# automatic
# % := 
# automatic
# ^ := lib/flog.o lib/text.o lib/syntax_autogen.o front/front.o front/frontMain.o
# automatic
# ? := lib/flog.o lib/text.o lib/syntax_autogen.o front/front.o front/frontMain.o
# automatic
# | := 
# variable set hash-table stats:
# Load=8/32=25%, Rehash=0, Collisions=2/17=12%
#  recipe to execute (from 'Makefile', line 35):
	$(CC) $(CFLAGS) $(addprefix $(OBJDIR),$(^F:.cpp=.o)) -o $@.exe

# Not a target:
.SUFFIXES: .out .a .ln .o .c .cc .C .cpp .p .f .F .m .r .y .l .ym .yl .s .S .mod .sym .def .h .info .dvi .tex .texinfo .texi .txinfo .w .ch .web .sh .elc .el
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\tr1\hypergeometric.tcc:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:55
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\tr1\special_function_util.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:19:56
#  File has been updated.
#  Successfully updated.

front/front.o: front/front.cpp front/front.cpp front/front.h c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\math.h c:\mingw\mingw\include\c++\11.2.0\cmath c:\mingw\mingw\include\c++\11.2.0\bits\cpp_type_traits.h c:\mingw\mingw\include\c++\11.2.0\ext\type_traits.h c:\mingw\mingw\x86_64-w64-mingw32\include\math.h c:\mingw\mingw\include\c++\11.2.0\bits\specfun.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_algobase.h c:\mingw\mingw\include\c++\11.2.0\bits\functexcept.h c:\mingw\mingw\include\c++\11.2.0\bits\exception_defines.h c:\mingw\mingw\include\c++\11.2.0\ext\numeric_traits.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_pair.h c:\mingw\mingw\include\c++\11.2.0\bits\move.h c:\mingw\mingw\include\c++\11.2.0\type_traits c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_types.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_funcs.h c:\mingw\mingw\include\c++\11.2.0\bits\concept_check.h c:\mingw\mingw\include\c++\11.2.0\debug\assertions.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator.h c:\mingw\mingw\include\c++\11.2.0\bits\ptr_traits.h c:\mingw\mingw\include\c++\11.2.0\debug\debug.h c:\mingw\mingw\include\c++\11.2.0\bits\predefined_ops.h c:\mingw\mingw\include\c++\11.2.0\limits c:\mingw\mingw\include\c++\11.2.0\tr1\gamma.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\special_function_util.h c:\mingw\mingw\include\c++\11.2.0\tr1\bessel_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\beta_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\ell_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\exp_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\hypergeometric.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\legendre_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\modified_bessel_func.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_hermite.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_laguerre.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\riemann_zeta.tcc c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\stat.h c:\mingw\mingw\x86_64-w64-mingw32\include\io.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\types.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_stat64.h front/../lib/nbtree.h front/../lib/flog.h c:\mingw\mingw\include\c++\11.2.0\typeinfo c:\mingw\mingw\include\c++\11.2.0\bits\exception.h c:\mingw\mingw\include\c++\11.2.0\bits\hash_bytes.h c:\mingw\mingw\x86_64-w64-mingw32\include\time.h c:\mingw\mingw\x86_64-w64-mingw32\include\_timeval.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\timeb.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\timeb_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\pthread_time.h front/../lib/stack.h front/../lib/enum_autogen.h front/../lib/syntax_autogen.h front/front_autogen.h front/front_autogen_cpp.h
#  Implicit rule search has been done.
#  Implicit/static pattern stem: 'front/front'
#  File does not exist.
#  File has been updated.
#  Successfully updated.
# automatic
# @ := front/front.o
# automatic
# * := front/front
# automatic
# < := front/front.cpp
# automatic
# + := front/front.cpp front/front.cpp front/front.h c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\math.h c:\mingw\mingw\include\c++\11.2.0\cmath c:\mingw\mingw\include\c++\11.2.0\bits\cpp_type_traits.h c:\mingw\mingw\include\c++\11.2.0\ext\type_traits.h c:\mingw\mingw\x86_64-w64-mingw32\include\math.h c:\mingw\mingw\include\c++\11.2.0\bits\specfun.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_algobase.h c:\mingw\mingw\include\c++\11.2.0\bits\functexcept.h c:\mingw\mingw\include\c++\11.2.0\bits\exception_defines.h c:\mingw\mingw\include\c++\11.2.0\ext\numeric_traits.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_pair.h c:\mingw\mingw\include\c++\11.2.0\bits\move.h c:\mingw\mingw\include\c++\11.2.0\type_traits c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_types.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_funcs.h c:\mingw\mingw\include\c++\11.2.0\bits\concept_check.h c:\mingw\mingw\include\c++\11.2.0\debug\assertions.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator.h c:\mingw\mingw\include\c++\11.2.0\bits\ptr_traits.h c:\mingw\mingw\include\c++\11.2.0\debug\debug.h c:\mingw\mingw\include\c++\11.2.0\bits\predefined_ops.h c:\mingw\mingw\include\c++\11.2.0\limits c:\mingw\mingw\include\c++\11.2.0\tr1\gamma.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\special_function_util.h c:\mingw\mingw\include\c++\11.2.0\tr1\bessel_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\beta_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\ell_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\exp_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\hypergeometric.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\legendre_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\modified_bessel_func.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_hermite.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_laguerre.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\riemann_zeta.tcc c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\stat.h c:\mingw\mingw\x86_64-w64-mingw32\include\io.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\types.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_stat64.h front/../lib/nbtree.h front/../lib/flog.h c:\mingw\mingw\include\c++\11.2.0\typeinfo c:\mingw\mingw\include\c++\11.2.0\bits\exception.h c:\mingw\mingw\include\c++\11.2.0\bits\hash_bytes.h c:\mingw\mingw\x86_64-w64-mingw32\include\time.h c:\mingw\mingw\x86_64-w64-mingw32\include\_timeval.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\timeb.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\timeb_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\pthread_time.h front/../lib/stack.h front/../lib/enum_autogen.h front/../lib/syntax_autogen.h front/front_autogen.h front/front_autogen_cpp.h
# automatic
# % := 
# automatic
# ^ := front/front.cpp front/front.h c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\math.h c:\mingw\mingw\include\c++\11.2.0\cmath c:\mingw\mingw\include\c++\11.2.0\bits\cpp_type_traits.h c:\mingw\mingw\include\c++\11.2.0\ext\type_traits.h c:\mingw\mingw\x86_64-w64-mingw32\include\math.h c:\mingw\mingw\include\c++\11.2.0\bits\specfun.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_algobase.h c:\mingw\mingw\include\c++\11.2.0\bits\functexcept.h c:\mingw\mingw\include\c++\11.2.0\bits\exception_defines.h c:\mingw\mingw\include\c++\11.2.0\ext\numeric_traits.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_pair.h c:\mingw\mingw\include\c++\11.2.0\bits\move.h c:\mingw\mingw\include\c++\11.2.0\type_traits c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_types.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_funcs.h c:\mingw\mingw\include\c++\11.2.0\bits\concept_check.h c:\mingw\mingw\include\c++\11.2.0\debug\assertions.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator.h c:\mingw\mingw\include\c++\11.2.0\bits\ptr_traits.h c:\mingw\mingw\include\c++\11.2.0\debug\debug.h c:\mingw\mingw\include\c++\11.2.0\bits\predefined_ops.h c:\mingw\mingw\include\c++\11.2.0\limits c:\mingw\mingw\include\c++\11.2.0\tr1\gamma.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\special_function_util.h c:\mingw\mingw\include\c++\11.2.0\tr1\bessel_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\beta_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\ell_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\exp_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\hypergeometric.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\legendre_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\modified_bessel_func.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_hermite.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_laguerre.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\riemann_zeta.tcc c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\stat.h c:\mingw\mingw\x86_64-w64-mingw32\include\io.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\types.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_stat64.h front/../lib/nbtree.h front/../lib/flog.h c:\mingw\mingw\include\c++\11.2.0\typeinfo c:\mingw\mingw\include\c++\11.2.0\bits\exception.h c:\mingw\mingw\include\c++\11.2.0\bits\hash_bytes.h c:\mingw\mingw\x86_64-w64-mingw32\include\time.h c:\mingw\mingw\x86_64-w64-mingw32\include\_timeval.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\timeb.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\timeb_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\pthread_time.h front/../lib/stack.h front/../lib/enum_autogen.h front/../lib/syntax_autogen.h front/front_autogen.h front/front_autogen_cpp.h
# automatic
# ? := front/front.cpp front/front.h c:\mingw\mingw\include\c++\11.2.0\stdlib.h c:\mingw\mingw\include\c++\11.2.0\cstdlib c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\c++config.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\os_defines.h c:\mingw\mingw\include\c++\11.2.0\x86_64-w64-mingw32\bits\cpu_defines.h c:\mingw\mingw\include\c++\11.2.0\pstl\pstl_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdlib.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_mac.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_secapi.h c:\mingw\mingw\x86_64-w64-mingw32\include\vadefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_wstdlib.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\limits.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include-fixed\syslimits.h c:\mingw\mingw\x86_64-w64-mingw32\include\limits.h c:\mingw\mingw\x86_64-w64-mingw32\include\crtdefs.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdlib_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\malloc.h c:\mingw\mingw\lib\gcc\x86_64-w64-mingw32\11.2.0\include\mm_malloc.h c:\mingw\mingw\x86_64-w64-mingw32\include\errno.h c:\mingw\mingw\include\c++\11.2.0\bits\std_abs.h c:\mingw\mingw\x86_64-w64-mingw32\include\stdio.h c:\mingw\mingw\x86_64-w64-mingw32\include\corecrt_stdio_config.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_off_t.h c:\mingw\mingw\x86_64-w64-mingw32\include\swprintf.inl c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\stdio_s.h c:\mingw\mingw\include\c++\11.2.0\math.h c:\mingw\mingw\include\c++\11.2.0\cmath c:\mingw\mingw\include\c++\11.2.0\bits\cpp_type_traits.h c:\mingw\mingw\include\c++\11.2.0\ext\type_traits.h c:\mingw\mingw\x86_64-w64-mingw32\include\math.h c:\mingw\mingw\include\c++\11.2.0\bits\specfun.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_algobase.h c:\mingw\mingw\include\c++\11.2.0\bits\functexcept.h c:\mingw\mingw\include\c++\11.2.0\bits\exception_defines.h c:\mingw\mingw\include\c++\11.2.0\ext\numeric_traits.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_pair.h c:\mingw\mingw\include\c++\11.2.0\bits\move.h c:\mingw\mingw\include\c++\11.2.0\type_traits c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_types.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator_base_funcs.h c:\mingw\mingw\include\c++\11.2.0\bits\concept_check.h c:\mingw\mingw\include\c++\11.2.0\debug\assertions.h c:\mingw\mingw\include\c++\11.2.0\bits\stl_iterator.h c:\mingw\mingw\include\c++\11.2.0\bits\ptr_traits.h c:\mingw\mingw\include\c++\11.2.0\debug\debug.h c:\mingw\mingw\include\c++\11.2.0\bits\predefined_ops.h c:\mingw\mingw\include\c++\11.2.0\limits c:\mingw\mingw\include\c++\11.2.0\tr1\gamma.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\special_function_util.h c:\mingw\mingw\include\c++\11.2.0\tr1\bessel_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\beta_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\ell_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\exp_integral.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\hypergeometric.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\legendre_function.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\modified_bessel_func.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_hermite.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\poly_laguerre.tcc c:\mingw\mingw\include\c++\11.2.0\tr1\riemann_zeta.tcc c:\mingw\mingw\x86_64-w64-mingw32\include\assert.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\stat.h c:\mingw\mingw\x86_64-w64-mingw32\include\io.h c:\mingw\mingw\x86_64-w64-mingw32\include\string.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\string_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\types.h c:\mingw\mingw\x86_64-w64-mingw32\include\_mingw_stat64.h front/../lib/nbtree.h front/../lib/flog.h c:\mingw\mingw\include\c++\11.2.0\typeinfo c:\mingw\mingw\include\c++\11.2.0\bits\exception.h c:\mingw\mingw\include\c++\11.2.0\bits\hash_bytes.h c:\mingw\mingw\x86_64-w64-mingw32\include\time.h c:\mingw\mingw\x86_64-w64-mingw32\include\_timeval.h c:\mingw\mingw\x86_64-w64-mingw32\include\sys\timeb.h c:\mingw\mingw\x86_64-w64-mingw32\include\sec_api\sys\timeb_s.h c:\mingw\mingw\x86_64-w64-mingw32\include\pthread_time.h front/../lib/stack.h front/../lib/enum_autogen.h front/../lib/syntax_autogen.h front/front_autogen.h front/front_autogen_cpp.h
# automatic
# | := 
# variable set hash-table stats:
# Load=8/32=25%, Rehash=0, Collisions=9/41=22%
#  recipe to execute (from 'Makefile', line 25):
	$(CC) -M $(CFLAGS) $< -o $(DEPSDIR)$(notdir $(@:.o=.d))
	echo "$(dir $<)" > line.tmp
	mv $(DEPSDIR)$(notdir $(@:.o=.d)) dependencies.tmp
	head -c -1 -q line.tmp dependencies.tmp > $(DEPSDIR)$(notdir $(@:.o=.d))
	rm dependencies.tmp line.tmp
	$(CC) -c $(CFLAGS) $< -o $(OBJDIR)$(notdir $@)

.PHONY: clean
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
.mod.o:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(COMPILE.mod) -o $@ $<

_deps/:
#  Implicit rule search has not been done.
#  Last modified 2023-02-21 15:30:43
#  File has been updated.
#  Successfully updated.
#  recipe to execute (from 'Makefile', line 38):
	mkdir $(DEPSDIR)

# Not a target:
.web.p:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(TANGLE) $<

# Not a target:
.S.s:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(PREPROCESS.S) $< > $@

# Not a target:
lib/flog.cpp:
#  Implicit rule search has been done.
#  Last modified 2023-02-20 23:36:18
#  File has been updated.
#  Successfully updated.

# Not a target:
.f.o:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(COMPILE.f) $(OUTPUT_OPTION) $<

# Not a target:
.ym:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.

# Not a target:
.cc.o:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(COMPILE.cc) $(OUTPUT_OPTION) $<

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\sys\stat.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:27
#  File has been updated.
#  Successfully updated.

# Not a target:
.F.f:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(PREPROCESS.F) $(OUTPUT_OPTION) $<

# Not a target:
c:\mingw\mingw\x86_64-w64-mingw32\include\sdks/_mingw_ddk.h:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 04:48:27
#  File has been updated.
#  Successfully updated.

# Not a target:
c:\mingw\mingw\include\c++\11.2.0\cmath:
#  Implicit rule search has been done.
#  Last modified 2021-10-18 05:20:01
#  File has been updated.
#  Successfully updated.

# Not a target:
.w.c:
#  Builtin rule
#  Implicit rule search has not been done.
#  Modification time never checked.
#  File has not been updated.
#  recipe to execute (built-in):
	$(CTANGLE) $< - $@

# files hash-table stats:
# Load=187/1024=18%, Rehash=0, Collisions=1339/6091=22%
# VPATH Search Paths

# No 'vpath' search paths.

# No general ('VPATH' variable) search path.

# strcache buffers: 24 (18) / strings = 6045 / storage = 194523 B / avg = 32 B
# current buf: size = 8162 B / used = 7226 B / count = 182 / avg = 39 B
# other used: total = 187297 B / count = 5863 / avg = 31 B
# other free: total = 429 B / max = 58 B / min = 2 B / avg = 18 B

# strcache performance: lookups = 7947 / hit rate = 23%
# hash-table stats:
# Load=6045/8192=74%, Rehash=0, Collisions=9851/7947=124%
# Finished Make data base on Tue Feb 21 15:31:44 2023

