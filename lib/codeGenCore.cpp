#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "text.h"

#define DEFCMD "defcmd"
// ^ a key word of a template start

#define CALLNEXT "call_next"
// ^ key word to call next function in queue

int main (int argc, char* argv[]) {

    if (argc != 2) {

        printf ("Right usage : ./codegen <src> \n");
        return 0;
    }

    char* buffer = bufferizeFile (argv[1]);
    assert (buffer != NULL);

    int funcCnt = 0;
    int delta = 0;
    char* iter = buffer;

    while (*iter != '\0') {

        if (sscanf (iter, " " DEFCMD " (%n", &delta) != 1) break;
        iter += delta;
        delta = 0;

        if (sscanf (iter, " %[^,]"))
    }
}