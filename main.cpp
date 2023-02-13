#include "front/front.h"

int main () {

    size_t size = 0;
    size_t cap = 0;
    Nod* buffer = bufferize ("example.cpp", &size, &cap);
    assert (buffer != NULL);

    for (int i = 0; i < size; i++) {
        flogprintf ("%d : Type = &lt;%u&gt;, Value = ", i, Syntax[buffer[i].type]);
        flogprintf ("&lt;0x%.8X&gt;\n", buffer[i].val);
        flogprintf ("<br>");
    }
}