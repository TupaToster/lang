#include "lib/nbtree.h"

int main () {

    Tree lol;
    lol.add (Nod (12));
    lol.add (Nod (13), lol.getData ());
    lol.add (Nod (14), lol.getData ());
    lol.add (Nod (15), lol.getData ());
    lol.add (Nod (16), lol.getData ());
    dump (lol);
    lol.add (Nod (17), lol.getData ()->next[2]);
    lol.add (Nod (18), lol.getData ()->next[2]);
    dump (lol);
    lol.recDtor (lol.getData()->next[2]);
    dump (lol);
    lol.recDtor (lol.getData()->next[2]);
    dump (lol);
    lol.set (lol.getData()->next[1], [] (Nod* ptr) {ptr->val = -14;});
    dump (lol);
}