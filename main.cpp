#include "lib/nbtree.h"

int main () {

    Tree lol;
    lol.add (Nod (12));
    lol.add (Nod (13), lol._data ());
    lol.add (Nod (14), lol._data ());
    lol.add (Nod (15), lol._data ());
    lol.add (Nod (16), lol._data ());
    dump (lol);
    lol.add (Nod (17), lol._data ()->next[2]);
    lol.add (Nod (18), lol._data ()->next[2]);
    dump (lol);
    lol.recDtor (lol._data()->next[2]);
    dump (lol);
    lol.recDtor (lol._data()->next[2]);
    dump (lol);
}