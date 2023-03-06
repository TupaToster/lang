//!!!!!!!!!! This file is generated automatically. To change it's contents, please change source file for auto generation. !!!!!!!
void Set_1 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_2 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_2 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_3 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_3 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == OR) {

        assert (iter->size == 2);

        Set_1 (tree, iter->next[0], outFile, varTable, funcTable, tagCnt);
        Set_1 (tree, iter->next[1], outFile, varTable, funcTable, tagCnt);
        fprintf (outFile, "add\n");
    }
    else Set_4(tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_4 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == AND) {

        assert (iter->size == 2);

        Set_1 (tree, iter->next[0], outFile, varTable, funcTable, tagCnt);
        Set_1 (tree, iter->next[1], outFile, varTable, funcTable, tagCnt);
        fprintf (outFile, "mult\n");
    }
    else Set_5(tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_5 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == LESS) {

        assert (iter->size == 2);

        Set_1 (tree, iter->next[0], outFile, varTable, funcTable, tagCnt);
        Set_1 (tree, iter->next[1], outFile, varTable, funcTable, tagCnt);
        fprintf (outFile, "jb :%d\npush 0\njmp :%d\n%d:\npush 1\n%d:\n", *tagCnt, *tagCnt + 1, *tagCnt, *tagCnt + 1);
        *tagCnt += 2;
    }
    else Set_6(tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_6 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == GREATER) {

        assert (iter->size == 2);

        Set_1 (tree, iter->next[0], outFile, varTable, funcTable, tagCnt);
        Set_1 (tree, iter->next[1], outFile, varTable, funcTable, tagCnt);
        fprintf (outFile, "ja :%d\npush 0\njmp :%d\n%d:\npush 1\n%d:\n", *tagCnt, *tagCnt + 1, *tagCnt, *tagCnt + 1);
        *tagCnt += 2;
    }
    else Set_7(tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_7 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == EQEQ) {

        assert (iter->size == 2);

        Set_1 (tree, iter->next[0], outFile, varTable, funcTable, tagCnt);
        Set_1 (tree, iter->next[1], outFile, varTable, funcTable, tagCnt);
        fprintf (outFile, "je :%d\npush 0\njmp :%d\n%d:\npush 1\n%d:\n", *tagCnt, *tagCnt + 1, *tagCnt, *tagCnt + 1);
        *tagCnt += 2;
    }
    else Set_8(tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_8 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == LESSEQ) {

        assert (iter->size == 2);

        Set_1 (tree, iter->next[0], outFile, varTable, funcTable, tagCnt);
        Set_1 (tree, iter->next[1], outFile, varTable, funcTable, tagCnt);
        fprintf (outFile, "jbe :%d\npush 0\njmp :%d\n%d:\npush 1\n%d:\n", *tagCnt, *tagCnt + 1, *tagCnt, *tagCnt + 1);
        *tagCnt += 2;
    }
    else Set_9(tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_9 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == GREATEREQ) {

        assert (iter->size == 2);

        Set_1 (tree, iter->next[0], outFile, varTable, funcTable, tagCnt);
        Set_1 (tree, iter->next[1], outFile, varTable, funcTable, tagCnt);
        fprintf (outFile, "jae :%d\npush 0\njmp :%d\n%d:\npush 1\n%d:\n", *tagCnt, *tagCnt + 1, *tagCnt, *tagCnt + 1);
        *tagCnt += 2;
    }
    else Set_10(tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_10 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == NOTEQ) {

        assert (iter->size == 2);

        Set_1 (tree, iter->next[0], outFile, varTable, funcTable, tagCnt);
        Set_1 (tree, iter->next[1], outFile, varTable, funcTable, tagCnt);
        fprintf (outFile, "jne :%d\npush 0\njmp :%d\n%d:\npush 1\n%d:\n", *tagCnt, *tagCnt + 1, *tagCnt, *tagCnt + 1);
        *tagCnt += 2;
    }
    else Set_11(tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_11 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == PLUS) {

        assert (iter->size == 2);

        Set_1 (tree, iter->next[0], outFile, varTable, funcTable, tagCnt);
        Set_1 (tree, iter->next[1], outFile, varTable, funcTable, tagCnt);
        fprintf (outFile, "add\n");
    }
    else Set_12(tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_12 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == MINUS) {

        assert (iter->size == 2);

        Set_1 (tree, iter->next[0], outFile, varTable, funcTable, tagCnt);
        Set_1 (tree, iter->next[1], outFile, varTable, funcTable, tagCnt);
        fprintf (outFile, "sub\n");
    }
    else Set_13(tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_13 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == MULT) {

        assert (iter->size == 2);

        Set_1 (tree, iter->next[0], outFile, varTable, funcTable, tagCnt);
        Set_1 (tree, iter->next[1], outFile, varTable, funcTable, tagCnt);
        fprintf (outFile, "mult\n");
    }
    else Set_14(tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_14 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == DIV) {

        assert (iter->size == 2);

        Set_1 (tree, iter->next[0], outFile, varTable, funcTable, tagCnt);
        Set_1 (tree, iter->next[1], outFile, varTable, funcTable, tagCnt);
        fprintf (outFile, "div\n");
    }
    else Set_15(tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_15 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == INT_CONST) {

        assert (iter->size == 0);

        fprintf (outFile, "push %d\n", iter->val.I);
    }
    else Set_16(tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_16 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == DOUBLE_CONST) {

        assert (iter->size == 0);

        fprintf (outFile, "push %lf\n", iter->val.LF);
    }
    else Set_17(tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_17 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_18 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_18 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_19 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_19 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_20 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_20 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_21 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_21 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_22 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_22 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_23 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_23 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == IF) {

        assert (iter->size > 0);

        Set_1 (tree, iter->next[0], outFile, varTable, funcTable, tagCnt);

        fprintf (outFile, "push 0\nje :%d\n", *tagCnt);
        size_t ifEndTag = *tagCnt;
        ++*tagCnt;

        Set_1 (tree, iter->next[1], outFile, varTable, funcTable, tagCnt);

        if (iter->next[iter->size - 1]->type == ELSE) {

            fprintf (outFile, "jmp :%d\n%d:\n", *tagCnt, ifEndTag);
            size_t elseEndTag = *tagCnt;
            ++*tagCnt;

            Set_1 (tree, iter->next[iter->size - 1]->next[0], outFile, varTable, funcTable, tagCnt);

            fprintf (outFile, "%d:\n", elseEndTag);
        }
        else fprintf (outFile, "%d:\n", ifEndTag);
    }
    else Set_24(tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_24 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   assert (tree != NULL);
   assert (iter != NULL);
   assert (outFile != NULL);
   assert (varTable != NULL);
   assert (funcTable != NULL);



    if (iter->type == WHILE) {

        assert (iter->size > 1);

        Set_1 (tree, iter->next[0], outFile, varTable, funcTable, tagCnt);

        fprintf (outFile, "push 0\nje :%u\n", *tagCnt);
        size_t whileEnd = *tagCnt;
        ++*tagCnt;

        fprintf (outFile, "%u:\n", *tagCnt);

        size_t whileStart = *tagCnt;
        ++*tagCnt;

        for (int i = 1; i < iter->size - (iter->next[iter->size - 1]->type == ELSE ? 1 : 0); i++) Set_1 (tree, iter->next[0], outFile, varTable, funcTable, tagCnt);

        fprintf (outFile, "push 0\nje :%u\n", *tagCnt);
        size_t elseEnd = *tagCnt;
        ++*tagCnt;

        Set_1 (tree, iter->next[1], outFile, varTable, funcTable, tagCnt);

        fprintf (outFile, "jmp :%u\n%u:\n", whileStart, whileEnd);

        if (iter->next[iter->size - 1]->type == ELSE) {

            for (int i = 0; i < iter->next[iter->size - 1]->size; i++) Set_1 (tree, iter->next[iter->size - 1]->next[i], outFile, varTable, funcTable, tagCnt);
        }

        fprintf (outFile, "%u:\n", elseEnd);
    }
    else Set_25(tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_25 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_26 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_26 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_27 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_27 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_28 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_28 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_29 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_29 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_30 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_30 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_31 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_31 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_32 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_32 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_33 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_33 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_34 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_34 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_35 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_35 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_36 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_36 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_37 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_37 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
   //This is a buffer function that allows to write call_next in all functions in codeGenSrc
   Set_38 (tree, iter, outFile, varTable, funcTable, tagCnt);
}
void Set_38 (Tree* tree, Nod* iter, FILE* outFile, NameTable* varTable, NameTable* funcTable, size_t* tagCnt) {
    // This is a buffer function that allows to write call_next in terminal functions in codeGenSrc
    printf ("Wrong token on ptr: %p, stopping Get\n\n", iter);
    dump (*tree);
    dump (*varTable);
    dump (*funcTable);
    assert ("Wrong token here!" == NULL);
}
