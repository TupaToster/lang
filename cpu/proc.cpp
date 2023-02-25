#include "softCPU.h"

int main (int argc, char* argv[]) {

    CPU<elem_t> cpu;

    char* codeFileName = cpu.handleComLine (argc, argv);
    assert (codeFileName != NULL);

    Text codeFile (codeFileName);

    cpu.code     = codeFile.txt;
    cpu.codeSize = codeFile.size;

    dump (codeFile);

    cpu.checkFileSign ();

    cpu.runCode ();

    cpu.DTOR ();
    codeFile.DTOR ();
    free (codeFileName);
}