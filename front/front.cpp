#include "front.h"

void dumpNodArray (Nod* array, size_t cap) {

    assert (array != NULL);

    flog (array);
    for (int i = 0; i < cap; i++) {

        flogprintf ("\t%p : Type = %d, val = ", array + i, array[i].type);
        if (IS_INT (array[i].type)) flogprintf ("%d;", array[i].val)
        else if (IS_CHAR (array[i].type)) flogprintf ("%c;", array[i].val)
        else if (IS_DOUBLE (array[i].type)) flogprintf ("%lg;", array[i].val)
        else if (IS_STR (array[i].type)) flogprintf ("%s;", array[i].val)
        else flogprintf ("0x%.16X;", array[i].val)

        for (int j = 0; j < array[i].size; j++) {

            flogprintf ("next[%d] : %p; ", j, array[i].next[j]);
        }
        flogprintf ("<br>");
    }
    flogprintf ("<hr>");
}

Nod* sizeUp (Nod* buffer, size_t* size, size_t* cap){

    if (*size < *cap) return buffer;

    Nod* retVal = (Nod*) calloc (*cap * 2, sizeof (Nod));
    assert (retVal != NULL);

    memcpy (retVal, buffer, (*cap) * sizeof (Nod));
    *cap *= 2;

    return retVal;
}

int readNumber (Nod* *buffer, size_t* size, size_t* cap, char* code, char* word) {

    assert (*buffer != NULL);
    assert (size != NULL);
    assert (cap != NULL);
    assert (code != NULL);
    assert (word != NULL);

    word[0] = '\0';
    int delta = 0;
    NodVal val = 0.0;

    if (sscanf (code, " %*lf%n", &delta) == EOF) return -1;

    if (delta != 0) {

        int lenD = 0, lenLf = 0;

        sscanf (code, " %*d%n", &lenD);
        sscanf (code, " %*lf%n", &lenLf);

        if (lenLf > lenD) {

            if (sscanf (code, " %lf%n", &val.LF, &delta) == EOF) return -1;

            *buffer = sizeUp (*buffer, size, cap);
            assert (*buffer != NULL);
            (*buffer)[*size] = Nod (DOUBLE_CONST, val.LF);
            ++*size;
        }
        else {

            if (sscanf (code, " %d%n", &val.I, &delta) == EOF) return -1;

            *buffer = sizeUp (*buffer, size, cap);
            assert (*buffer != NULL);

            (*buffer)[*size] = Nod (INT_CONST, val.I);
            ++*size;
        }
    }

    return delta;
}

int readChar (Nod* *buffer, size_t* size, size_t* cap, char* code, char* word) {

    assert (*buffer != NULL);
    assert (size != NULL);
    assert (cap != NULL);
    assert (code != NULL);
    assert (word != NULL);

    int delta = 0;
    NodVal val = 0.0;
    word[0] = '\0';
    if (sscanf (code, " \'%*c\'%n", &delta) == EOF) return -1;

    if (delta != 0) {

        sscanf (code, " \'%c\'%n", &val.C, &delta);

        *buffer = sizeUp (*buffer, size, cap);
        assert (*buffer != NULL);

        (*buffer)[*size] = Nod (CHAR_CONST, val.C);
        ++*size;

    }

    return delta;
}

int readStr (Nod* *buffer, size_t* size, size_t* cap, char* code, char* word) {

    assert (*buffer != NULL);
    assert (size != NULL);
    assert (cap != NULL);
    assert (code != NULL);
    assert (word != NULL);

    int delta = 0;
    NodVal val = 0.0;
    word[0] = '\0';
    if (sscanf (code, " \"%*[^\"]\"%n", &delta) == EOF) return -1;

    if (delta != 0) {

        val.STR = (char*) calloc (delta + 1, sizeof (char));
        assert (val.STR != NULL);

        sscanf (code, " \"%[^\"]\"", val.STR);

        *buffer = sizeUp (*buffer, size, cap);
        assert (*buffer != NULL);

        (*buffer)[*size] = Nod (STR_CONST, val.STR);
        ++*size;

        free (val.STR);
    }

    return delta;
}

int readNonService (Nod* *buffer, size_t* size, size_t* cap, char* code, char* word) {

    assert (*buffer != NULL);
    assert (size != NULL);
    assert (cap != NULL);
    assert (code != NULL);
    assert (word != NULL);

    int delta = 0;
    NodVal val = 0.0;
    word[0] = '\0';

    if (sscanf (code, " %[^" SERVICE_SYMBOLS " \r\n]%n", word, &delta) == EOF) return -1;

    if (strlen (word) == 0) return 0;

    if (word[0] >= '0' and word[0] <= '9') return 0;

    unsigned int hashWord = countHash (word, word + strlen (word));

    *buffer = sizeUp (*buffer, size, cap);
    assert (*buffer != NULL);

    for (int i = 1; i <= NOD_TYPE_CNT; i++)
        if (i == NOD_TYPE_CNT){

            (*buffer)[*size] = Nod (BLANK, word);
            ++*size;
        }
        else if (Syntax[i] > 0 and Syntax[i] == hashWord) {

            (*buffer)[*size] = Nod ((NodType) i, 0.0);
            ++*size;
            break;
        }

    return delta;
}

int readService (Nod* *buffer, size_t* size, size_t* cap, char* code, char* word) {

    assert (*buffer != NULL);
    assert (size != NULL);
    assert (cap != NULL);
    assert (code != NULL);
    assert (word != NULL);

    int delta = 0;
    word[0] = '\0';
    if (sscanf (code, " %[" SERVICE_SYMBOLS "]%n", word, &delta) == EOF) return -1;

    if (strlen (word) == 0) return 0;

    if (delta == 0) return 0;
    delta -= strlen (word) - 1;

    unsigned int hashWord = countHash (word, word + 1);

    if (word[1] == '=') {
        hashWord = countHash (word, word + 2);
        delta++;
    }

    *buffer = sizeUp (*buffer, size, cap);
    assert (*buffer != NULL);


    for (int i = 1; i < NOD_TYPE_CNT; i++)
        if (Syntax[i] > 0 and Syntax[i] == hashWord) {

            (*buffer)[*size] = Nod ((NodType) i, 0);
            ++*size;
            break;
        }

    return delta;
}

Nod* bufferize (const char* fileName, size_t* size, size_t* cap) {

    assert (fileName != NULL);

    char* code = bufferizeFile (fileName);
    assert (code != NULL);

    int iter = 0;

    char word[MAX_WORD_LEN] = "";
    NodVal val = 0;
    int delta = 0;

    *cap = 4;
    *size = 1;
    Nod* buffer = (Nod*) calloc (*cap, sizeof (Nod));
    assert (buffer != NULL);

    buffer[0] = Nod (BLANK, 0.0);

    for (;;) {

        delta = readNumber (&buffer, size, cap, code + iter, word);
        if (delta < 0) break;
        iter += delta;

        delta = readChar (&buffer, size, cap, code + iter, word);
        if (delta < 0) break;
        iter += delta;

        delta = readStr (&buffer, size, cap, code + iter, word);
        if (delta < 0) break;
        iter += delta;

        delta = readNonService (&buffer, size, cap, code + iter, word);
        if (delta < 0) break;
        iter += delta;

        delta = readService (&buffer, size, cap, code + iter, word);
        if (delta < 0) break;
        iter += delta;
    }

    return buffer;
}

#define Token (*token)

#define inSize Token - tree->getData () < tree->getSize ()
#define INT_MATCH(var, constant) ((var) == INT and (constant) == INT_CONST)
#define DOUBLE_MATCH(var, constant) ((var) == DOUBLE and (constant) == DOUBLE_CONST)
#define CHAR_MATCH(var, constant) ((var) == DOUBLE and (constant) == DOUBLE_CONST)
#define STR_MATCH(var, constant) ((var) == STR and (constant) == STR_CONST)

#ifdef NDEBUG
#define NDEBUG_TEMP 1
#undef NDEBUG
#endif

Tree Get_G (Nod* buffer, size_t size) {

    assert (buffer != NULL);

    Tree tree (buffer, size);

    dumpNodArray (tree.getData (), tree.getCap ());

    NameTable varTable;
    NameTable funcTable;

    Nod* token = tree.getData () + 1;

    while (token - tree.getData () < tree.getSize ()) Get_1 (&tree, tree.getData (), &token, &varTable, &funcTable);

    dumpNodArray (tree.getData (), tree.getCap ());

    return tree;
}

#include "front_autogen_cpp.h"

#ifdef NDEBUG_TEMP
#undef NDEBUG_TEMP
#define NDEBUG 1
#endif

void writeTreeToFile (Tree* tree, const char* fileName) {

    assert (tree != NULL);
    assert (fileName != NULL);

    FILE* outFile = fopen (fileName, "wb");
    assert (outFile != NULL);

    Nod* iter = tree->getData ();

    int tabCnt = 0;

    set (tree, {
        for (int i = 0; i < tree->getCap (); i++) {

            tree->getData ()[i].num = i;
        }
    })

    dump (*tree);

    writeNodRec (tree->getData (), outFile, &tabCnt);
}

void writeNodRec (Nod* iter, FILE* outFile, int* tabCnt) {

    assert (iter != NULL);
    assert (outFile != NULL);
    assert (tabCnt != NULL);

    for (int i = 0; i < *tabCnt; i++) fprintf (outFile, "\t");

    fprintf (outFile, "<%d;%d;", iter->num, iter->type);
    if (IS_STR (iter->type)) {
        if (iter->val.STR == NULL) fprintf (outFile, "%.16X;", iter->val);
        else fprintf (outFile, "\"%s\";", iter->val);
    }
    else fprintf (outFile, "%.16X;", iter->val);
    fprintf (outFile, "%d> {\n", iter->size);

    ++*tabCnt;

    if (iter->type == VAR and iter->next[0]->type == VAR) {

        for (int i = 0; i < *tabCnt; i++) fprintf (outFile, "\t");

        fprintf (outFile, "<%d;0;0;0> {}\n", iter->next[0]->num);
    }
    else if (iter->type == FUNC and iter->next[0]->type == FUNC) {


        for (int i = 0; i < *tabCnt; i++) fprintf (outFile, "\t");

        fprintf (outFile, "<%d;0;0;0> {}\n", iter->next[0]->num);

        for (int i = 1; i < iter->size; i++) writeNodRec (iter->next[i], outFile, tabCnt);
    }
    else
        for (int i = 0; i < iter->size; i++) {
            if (iter->type == VAR and iter->next[i]->type == VAR) continue;
            if (iter->type == FUNC and iter->next[i]->type == FUNC) continue;
            writeNodRec (iter->next[i], outFile, tabCnt);
        }

    --*tabCnt;
    for (int i = 0; i < *tabCnt; i++) fprintf (outFile, "\t");
    fprintf (outFile, "}\n");
}