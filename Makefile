CC=g++

CFLAGS=-Wshadow -Winit-self -Wredundant-decls -Wcast-align -Wundef -Wfloat-equal -Winline -Wunreachable-code -Wmissing-declarations -Wmissing-include-dirs -Wswitch-enum -Wswitch-default -Weffc++ -Wmain -Wextra -Wall -g -pipe -fexceptions -Wcast-qual -Wconversion -Wctor-dtor-privacy -Wempty-body -Wformat-security -Wformat=2 -Wignored-qualifiers -Wlogical-op -Wmissing-field-initializers -Wnon-virtual-dtor -Woverloaded-virtual -Wpointer-arith -Wsign-promo -Wstack-usage=8192 -Wstrict-aliasing -Wstrict-null-sentinel -Wtype-limits -Wwrite-strings -D_DEBUG -D_EJUDGE_CLIENT_SIDE

OBJDIR=_objs/
DEPSDIR=_deps/
CODEGENDIR=codeGenerator/
LIBDIR=lib/
FRONTDIR=front/
BACKDIR=back/
CPUDIR=cpu/
ASMDIR=asm/

CODEGEN=codeGenerator.cpp flog.cpp text.cpp
FRONT=front.cpp frontMain.cpp
BACK=back.cpp backMain.cpp
LIB=flog.cpp text.cpp syntax_autogen.cpp
ASM=asm_funcs.cpp asm.cpp
CPU=proc.cpp

all: $(DEPSDIR) $(OBJDIR) codeGen.exe front.exe back.exe asm.exe cpu.exe

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

$(OBJDIR)%.o: $(CPUDIR)%.cpp
	$(CC) -M $(CFLAGS) $< -o $(DEPSDIR)$(@F:.o=.d)
	echo "$(OBJDIR)" > line.tmp
	mv $(DEPSDIR)$(@F:.o=.d) input.tmp
	head -c -1 -q line.tmp input.tmp > $(DEPSDIR)$(@F:.o=.d)
	rm input.tmp line.tmp
	$(CC) -c $(CFLAGS) $< -o $@

$(OBJDIR)%.o: $(ASMDIR)%.cpp
	$(CC) -M $(CFLAGS) $< -o $(DEPSDIR)$(@F:.o=.d)
	echo "$(OBJDIR)" > line.tmp
	mv $(DEPSDIR)$(@F:.o=.d) input.tmp
	head -c -1 -q line.tmp input.tmp > $(DEPSDIR)$(@F:.o=.d)
	rm input.tmp line.tmp
	$(CC) -c $(CFLAGS) $< -o $@

$(OBJDIR)%.o: $(BACKDIR)%.cpp
	$(CC) -M $(CFLAGS) $< -o $(DEPSDIR)$(@F:.o=.d)
	echo "$(OBJDIR)" > line.tmp
	mv $(DEPSDIR)$(@F:.o=.d) input.tmp
	head -c -1 -q line.tmp input.tmp > $(DEPSDIR)$(@F:.o=.d)
	rm input.tmp line.tmp
	$(CC) -c $(CFLAGS) $< -o $@


front.exe: $(addprefix $(OBJDIR),$(LIB:.cpp=.o) $(FRONT:.cpp=.o))
	$(CC) $(CFLAGS) $^ -o $@

codeGen.exe: $(addprefix $(OBJDIR), $(CODEGEN:.cpp=.o)) $(CODEGENDIR)codeGenSrc
	$(CC) $(CFLAGS) $(addprefix $(OBJDIR), $(CODEGEN:.cpp=.o)) -o $@
	./$@ $(CODEGENDIR)codeGenSrc

cpu.exe: $(addprefix $(OBJDIR),$(LIB:.cpp=.o) $(CPU:.cpp=.o))
	$(CC) $(CFLAGS) $^ -o $@

asm.exe: $(addprefix $(OBJDIR),$(LIB:.cpp=.o) $(ASM:.cpp=.o))
	$(CC) $(CFLAGS) $^ -o $@

back.exe: $(addprefix $(OBJDIR), $(LIB:.cpp=.o) $(BACK:.cpp=.o))
	$(CC) $(CFLAGS) $^ -o $@

$(DEPSDIR):
	mkdir $(DEPSDIR)

$(OBJDIR):
	mkdir $(OBJDIR)

clean:
	rm -rf $(DEPSDIR) $(OBJDIR)
	rm -rf *.exe* *.png *.dot *.o *.wtf
	clear

test: all main.o $(addprefix $(OBJDIR), $(LIB:.cpp=.o))
	clear
	$(CC) $(CFLAGS) -c main.cpp
	$(CC) $(CFLAGS) main.o $(addprefix $(OBJDIR), $(LIB:.cpp=.o)) -o test.exe
	./test.exe

sasm:
	./front.exe example_cpp tree.save
	./back.exe tree.save lol.sasm

wtf: asm.exe cpu.exe
	clear
	./asm.exe lol.sasm
	./cpu.exe a.wtf

.PHONY: clean test wtf sasm