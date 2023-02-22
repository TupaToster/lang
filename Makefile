CC=g++

CFLAGS+=-Wshadow -Winit-self -Wredundant-decls -Wcast-align -Wundef -Wfloat-equal -Winline -Wunreachable-code -Wmissing-declarations -Wmissing-include-dirs -Wswitch-enum -Wswitch-default -Weffc++ -Wmain -Wextra -Wall -g -pipe -fexceptions -Wcast-qual -Wconversion -Wctor-dtor-privacy -Wempty-body -Wformat-security -Wformat=2 -Wignored-qualifiers -Wlogical-op -Wmissing-field-initializers -Wnon-virtual-dtor -Woverloaded-virtual -Wpointer-arith -Wsign-promo -Wstack-usage=8192 -Wstrict-aliasing -Wstrict-null-sentinel -Wtype-limits -Wwrite-strings -D_DEBUG -D_EJUDGE_CLIENT_SIDE

OBJDIR=_objs/
DEPSDIR=_deps/
CODEGENDIR=codeGenerator/
LIBDIR=lib/
FRONTDIR=front/

CODEGEN=codeGenerator.cpp
FRONT=front.cpp frontMain.cpp
LIB=flog.cpp text.cpp syntax_autogen.cpp

# CODEGEN:=$(addprefix $(CODEGENDIR),$(CODEGEN))
# FRONT:=$(addprefix $(FRONTDIR),$(FRONT))
# LIB:=$(addprefix $(LIBDIR),$(LIB))

# OBJS = $(LIB:.cpp=.o) $(FRONT:.cpp=.o) $(CODEGEN:.cpp=.o)
# OBJS:= $(addprefix lib/, $(LIB:.cpp=.o)) $(addprefix front/, $(FRONT:.cpp=.o)) $(addprefix codeGenerator/, $(CODEGEN:.cpp=.o)) | $(OBJDIR)

.INCLUDE_DIRS=$(DEPSDIR)

all: $(OBJDIR) $(DEPSDIR) codeGen.exe front.exe

-include $(addprefix $(DEPSDIR),*.d)

$(OBJDIR)%.o: $(FRONTDIR)%.cpp
	$(CC) -M $(CFLAGS) $< -o $(DEPSDIR)$(@F:.o=.d)
	echo "$(OBJDIR)" > line.tmp
	mv $(DEPSDIR)$(@F:.o=.d) input.tmp
	head -c -1 -q line.tmp input.tmp > $(DEPSDIR)$(@F:.o=.d)
	rm input.tmp line.tmp
	$(CC) -c $(CFLAGS) $< -o $@

$(OBJDIR)%.o: $(LIBDIR)%.cpp
	$(CC) -M $(CFLAGS) $< -o $(DEPSDIR)$(@F:.o=.d)
	echo "$(OBJDIR)" > line.tmp
	mv $(DEPSDIR)$(@F:.o=.d) input.tmp
	head -c -1 -q line.tmp input.tmp > $(DEPSDIR)$(@F:.o=.d)
	rm input.tmp line.tmp
	$(CC) -c $(CFLAGS) $< -o $@

$(OBJDIR)%.o: $(CODEGENDIR)%.cpp
	$(CC) -M $(CFLAGS) $< -o $(DEPSDIR)$(@F:.o=.d)
	echo "$(OBJDIR)" > line.tmp
	mv $(DEPSDIR)$(@F:.o=.d) input.tmp
	head -c -1 -q line.tmp input.tmp > $(DEPSDIR)$(@F:.o=.d)
	rm input.tmp line.tmp
	$(CC) -c $(CFLAGS) $< -o $@


front.exe: $(addprefix $(OBJDIR),$(LIB:.cpp=.o) $(FRONT:.cpp=.o))
	$(CC) $(CFLAGS) $(addprefix $(OBJDIR),$(^F:.cpp=.o)) -o $@

codeGen.exe: $(addprefix $(OBJDIR), $(LIB:.cpp=.o) $(CODEGEN:.cpp=.o))
	$(CC) $(CFLAGS) $(addprefix $(OBJDIR), $(^F:.cpp=.o)) -o $@

$(DEPSDIR):
	mkdir $(DEPSDIR)

$(OBJDIR):
	mkdir $(OBJDIR)

clean:
	rm -rf $(DEPSDIR) $(OBJDIR)
	rm -rf *.exe* *.png *.dot
	clear

.PHONY: clean