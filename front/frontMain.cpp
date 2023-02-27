#include "front.h"

int main (int argc,  char* argv[]) {

    if (argc != 3) {

        printf ("Right usage: ./front.exe <codeFileName> <treeSaveFileName>\n");
        return __LINE__;
    }

    size_t cap = 0;
    size_t size = 0;
    Nod* buffer = bufferize (argv[1], &size, &cap);
    assert (buffer != NULL);

    Tree tree = Get_G (buffer, size);

    tree.writeToFile (argv[2]);
}