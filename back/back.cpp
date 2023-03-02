#include "back.h"

void Set_G (char* fileName, char* outFile) {

    assert (fileName != NULL);

    Tree tree (fileName);

    dump (tree);

    NameTable varTable;
    NameTable funcTable;

    for (int i = 0; i < tree.getData ()->size; i++) Set_1 (&tree, tree->getData ().next[i], outFile, &varTable, &funcTable);
}

#ifdef NDEBUG
#define NDEBUG_TEMP 1
#undef NDEBUG
#endif

#include "back_autogen_cpp.h"

#ifdef NDEBUG_TEMP
#undef NDEBUG_TEMP
#define NDEBUG 1
#endif