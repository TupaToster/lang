#include "lib/nbtree.h"

int main () {

    Tree lol;
    lol.add (Nod (12));
    lol.add (Nod (13), lol._data ());
    lol.add (Nod (13), lol._data () + 1);
    lol.add (Nod (13), lol._data ());
    lol.add (Nod (13), lol._data ());
    dump (lol);
}