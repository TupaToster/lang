CC=g++

#CFLAGS+=-Wshadow -Winit-self -Wredundant-decls -Wcast-align -Wundef -Wfloat-equal -Winline -Wunreachable-code -Wmissing-declarations -Wmissing-include-dirs -Wswitch-enum -Wswitch-default -Weffc++ -Wmain -Wextra -Wall -g -pipe -fexceptions -Wcast-qual -Wconversion -Wctor-dtor-privacy -Wempty-body -Wformat-security -Wformat=2 -Wignored-qualifiers -Wlogical-op -Wmissing-field-initializers -Wnon-virtual-dtor -Woverloaded-virtual -Wpointer-arith -Wsign-promo -Wstack-usage=8192 -Wstrict-aliasing -Wstrict-null-sentinel -Wtype-limits -Wwrite-strings -D_DEBUG -D_EJUDGE_CLIENT_SIDE

OBJDIR=_objs/
DEPSDIR=_deps/
CODEGENDIR=codeGenerator/
LIBDIR=lib/
FRONTDIR=front/

CODEGEN=codeGenerator.cpp
FRONT=front.cpp frontMain.cpp
LIB=flog.cpp text.cpp syntax_autogen.cpp

CODEGEN:=$(addprefix $(CODEGENDIR),$(CODEGEN))
FRONT:=$(addprefix $(FRONTDIR),$(FRONT))
LIB:=$(addprefix $(LIBDIR),$(LIB))

OBJS = $(LIB:.cpp=.o) $(FRONT:.cpp=.o) $(CODEGEN:.cpp=.o)
# OBJS:= $(addprefix lib/, $(LIB:.cpp=.o)) $(addprefix front/, $(FRONT:.cpp=.o)) $(addprefix codeGenerator/, $(CODEGEN:.cpp=.o)) | $(OBJDIR)

.INCLUDE_DIRS=$(DEPSDIR)

all: $(OBJDIR) $(DEPSDIR) $(OBJS) front

-include *.d

front: $(LIB:.cpp=.o) $(FRONT:.cpp=.o)
	$(CC) $(CFLAGS) $(addprefix $(OBJDIR),$(^F:.cpp=.o)) -o $@.exe

$(DEPSDIR):
	mkdir $(DEPSDIR)

$(OBJDIR):
	mkdir $(OBJDIR)

clean:
	rm -rf $(DEPSDIR) $(OBJDIR)
	rm -rf *.exe* *.png *.dot
	clear

.PHONY: clean

%.o: %.cpp
	$(CC) -M $(CFLAGS) $< -o $(DEPSDIR)$(notdir $(@:.o=.d))
	echo "$(dir $<)" > line.tmp
	mv $(DEPSDIR)$(notdir $(@:.o=.d)) dependencies.tmp
	head -c -1 -q line.tmp dependencies.tmp > $(DEPSDIR)$(notdir $(@:.o=.d))
	rm dependencies.tmp line.tmp
	$(CC) -c $(CFLAGS) $< -o $(OBJDIR)$(notdir $@)
