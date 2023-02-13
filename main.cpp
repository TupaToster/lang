#include "front/front.h"

int main () {

    // char lol[] = "     int      kok = \n15;";
    // char word[100] = "";
    // int delta = 0;
    // sscanf (lol, " %[^" SERVICE_SYMBOLS "]%n", word, &delta);
    // printf ("%d", delta);


    // return 0;

    size_t size = 0;
    size_t cap = 0;
    Nod* buffer = bufferize ("example.cpp", &size, &cap);
    assert (buffer != NULL);

    for (int i = 0; i < size; i++) {

        flogprintf ("%d : Type = &lt;%u&gt;, Value = ", i, Syntax[buffer[i].type]);
        if (IS_STR (buffer[i].type)) flogprintf ("&lt;%s&gt;;\n", buffer[i].val)
        else if (IS_CHAR (buffer[i].type)) flogprintf ("&lt;%c&gt;;\n", buffer[i].val)
        else if (IS_INT (buffer[i].type)) flogprintf ("&lt;%d&gt;;\n", buffer[i].val)
        else if (IS_DOUBLE (buffer[i].type)) flogprintf ("&lt;%lf&gt;;\n", buffer[i].val)
        flogprintf ("<br>");
    }
}