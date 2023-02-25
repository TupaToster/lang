#include "lib/text.h"
#include "lib/flog.h"
#include "lib/stack.h"
#include "lib/nbtree.h"

int main () {

    Text lol ("test.sasm");

    for (int i = 0; i < lol.lineCnt; i++) {

        char temp = *lol.lines[i].end;

        *lol.lines[i].end = '\0';

        printf ("%p : %p >> \"%s\";\n", lol.lines[i].begin, lol.lines[i].end, lol.lines[i].begin);

        *lol.lines[i].end = temp;
    }
}