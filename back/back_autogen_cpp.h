//!!!!!!!!!! This file is generated automatically. To change it's contents, please change source file for auto generation. !!!!!!!
void Set_1 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_2 (tree, iter, outFile, varTable, funcTable);
}
void Set_2 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_3 (tree, iter, outFile, varTable, funcTable);
}
void Set_3 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_4 (tree, iter, outFile, varTable, funcTable);
}
void Set_4 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_5 (tree, iter, outFile, varTable, funcTable);
}
void Set_5 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_6 (tree, iter, outFile, varTable, funcTable);
}
void Set_6 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_7 (tree, iter, outFile, varTable, funcTable);
}
void Set_7 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_8 (tree, iter, outFile, varTable, funcTable);
}
void Set_8 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_9 (tree, iter, outFile, varTable, funcTable);
}
void Set_9 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_10 (tree, iter, outFile, varTable, funcTable);
}
void Set_10 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == PLUS) {

        assert (iter->size == 2);

        Set_1 (tree, iter->next[0], outFile, varTable, funcTable);
        Set_1 (tree, iter->next[1], outFile, varTable, funcTable);
        fprintf (outFile, "add\n");
    }
    else Set_11(tree, iter, outFile, varTable, funcTable);
}
void Set_11 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == MINUS) {

        assert (iter->size == 2);

        Set_1 (tree, iter->next[0], outFile, varTable, funcTable);
        Set_1 (tree, iter->next[1], outFile, varTable, funcTable);
        fprintf (outFile, "sub\n");
    }
    else Set_12(tree, iter, outFile, varTable, funcTable);
}
void Set_12 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == MULT) {

        assert (iter->size == 2);

        Set_1 (tree, iter->next[0], outFile, varTable, funcTable);
        Set_1 (tree, iter->next[1], outFile, varTable, funcTable);
        fprintf (outFile, "mult\n");
    }
    else Set_13(tree, iter, outFile, varTable, funcTable);
}
void Set_13 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == DIV) {

        assert (iter->size == 2);

        Set_1 (tree, iter->next[0], outFile, varTable, funcTable);
        Set_1 (tree, iter->next[1], outFile, varTable, funcTable);
        fprintf (outFile, "div\n");
    }
}
void Set_14 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_15 (tree, iter, outFile, varTable, funcTable);
}
void Set_15 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_16 (tree, iter, outFile, varTable, funcTable);
}
void Set_16 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_17 (tree, iter, outFile, varTable, funcTable);
}
void Set_17 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_18 (tree, iter, outFile, varTable, funcTable);
}
void Set_18 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    assert (iter->size < 2);
    fprintf (outFile, "out\n");
    if (iter->size == 1) Set_19(tree, iter->next[0], outFile, varTable, funcTable);
}
void Set_19 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_20 (tree, iter, outFile, varTable, funcTable);
}
void Set_20 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_21 (tree, iter, outFile, varTable, funcTable);
}
void Set_21 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_22 (tree, iter, outFile, varTable, funcTable);
}
void Set_22 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_23 (tree, iter, outFile, varTable, funcTable);
}
void Set_23 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_24 (tree, iter, outFile, varTable, funcTable);
}
void Set_24 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_25 (tree, iter, outFile, varTable, funcTable);
}
void Set_25 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_26 (tree, iter, outFile, varTable, funcTable);
}
void Set_26 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_27 (tree, iter, outFile, varTable, funcTable);
}
void Set_27 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_28 (tree, iter, outFile, varTable, funcTable);
}
void Set_28 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_29 (tree, iter, outFile, varTable, funcTable);
}
void Set_29 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_30 (tree, iter, outFile, varTable, funcTable);
}
void Set_30 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_31 (tree, iter, outFile, varTable, funcTable);
}
void Set_31 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_32 (tree, iter, outFile, varTable, funcTable);
}
void Set_32 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_33 (tree, iter, outFile, varTable, funcTable);
}
void Set_33 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_34 (tree, iter, outFile, varTable, funcTable);
}
void Set_34 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_35 (tree, iter, outFile, varTable, funcTable);
}
void Set_35 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_36 (tree, iter, outFile, varTable, funcTable);
}
void Set_36 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_37 (tree, iter, outFile, varTable, funcTable);
}
void Set_37 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_38 (tree, iter, outFile, varTable, funcTable);
}
void Set_38 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable) {
    // This is a buffer function that allows to write call_next in terminal functions in codeGenSrc
    printf ("Wrong token on ptr: %p, stopping Get\n\n", Token);
    dumpNodArray (tree->getData (), tree->getSize ());
    dump (*tree);
    dump (*varTable);
    dump (*funcTable);
    assert ("Wrong token here!" == NULL);
}
