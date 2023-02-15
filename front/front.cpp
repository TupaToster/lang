#include "front.h"

void dumpNodArray (Nod* array, size_t cap) {

    assert (array != NULL);

    flog (array);
    for (int i = 0; i < cap; i++) {

        flogprintf ("\t%p : Type = %d, val = %.8X ", array + i, array[i].type, array[i].val);
        for (int j = 0; j < array[i].size; j++) {

            flogprintf ("next[%d] : %p; ", j, array[i].next[j]);
        }
        flogprintf ("<br>");
    }
    flogprintf ("stop\n\n");
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
            (*buffer)[*size] = Nod (DOUBLE, val.LF);
            ++*size;
        }
        else {

            if (sscanf (code, " %d%n", &val.I, &delta) == EOF) return -1;

            *buffer = sizeUp (*buffer, size, cap);
            assert (*buffer != NULL);

            (*buffer)[*size] = Nod (INT, val.I);
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

        (*buffer)[*size] = Nod (CHAR, val.C);
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

        (*buffer)[*size] = Nod (STR, val.STR);
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

            (*buffer)[*size] = Nod ((NodType) i, 0);
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

Tree Get_G (Nod* buffer, size_t size) {

    assert (buffer != NULL);

    Tree tree (buffer, size);

    dumpNodArray (tree.getData (), tree.getSize ());

    Nod* token = tree.getData () + 1;

    Get_1 (&tree, tree.getData (), &token);

    return tree;
}

void Get_1 (Tree* tree, Nod* iter, Nod** token) {

    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);

    Get_2 (tree, iter, token);

    while (Token->type == PLUS) {

        set (tree, {

            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })

        Token++;

        Get_2 (tree, Token - 1, token);
    }
}

void Get_2 (Tree* tree, Nod* iter, Nod** token) {

    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);

    Get_3 (tree, iter, token);

    while (Token->type == MINUS) {

        set (tree, {

            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })

        Token++;

        Get_3 (tree, Token - 1, token);
    }
}

void Get_3 (Tree* tree, Nod* iter, Nod** token) {

    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);

    Get_4 (tree, iter, token);

    while (Token->type == MULT) {

        set (tree, {

            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })

        Token++;

        Get_4 (tree, Token - 1, token);
    }
}

void Get_4 (Tree* tree, Nod* iter, Nod** token) {

    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);

    Get_5 (tree, iter, token);

    while (Token->type == DIV) {

        set (tree, {

            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;

            Token++;

            Get_5 (tree, Token - 1, token);
        })
    }
}

void Get_5 (Tree* tree, Nod* iter, Nod** token) {

    if (Token->type == LB) {

        Token++;
        Get_1 (tree, iter, token);
        assert (Token->type == RB);
        Token++;
    }
    else Get_6 (tree, iter, token);
}

void Get_6 (Tree* tree, Nod* iter, Nod** token) {

    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);

    if (IS_TYPE (Token->type) and (Token - tree->getData ()) < tree->getSize () - 1 and (Token + 1)->type == BLANK) {

        set (tree, {

            (Token + 1)->type = VAR;
            (Token + 1)->prev = iter->prev;
            Token->prev = Token + 1;
            (Token + 1)->push_back (Token);
            (Token + 1)->prev = iter;
            iter->push_back (Token + 1);
        })

        Token += 2;

        return;
    }

    assert (IS_TYPE (Token->type));
    Token->prev = iter;
    iter->push_back (Token);
    Token++;
}