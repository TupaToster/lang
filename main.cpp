#include "front/front.h"

int main () {

    size_t cap = 0;
    size_t size = 0;
    Nod* buffer = bufferize ("example.cpp", &size, &cap);
    assert (buffer != NULL);

    dumpNodArray (buffer, cap);

    Tree tree = Get_G (buffer, size);

    dump (tree);
}