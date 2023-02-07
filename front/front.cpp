#include "front.h"

size_t getFileSize (const char* fileName) {

    assert (fileName != NULL);

    stat temp = {};

    stat (fileName, &temp);

    return temp.st_size;
}

char* bufferizeFile (const char* fileName) {

    char* retVal = (char*) calloc (getFileSize (fileName) + 1, sizeof (char));
    assert (retVal != NULL);

    FILE* fIn = fopen (fileName, "rb");
    assert (fIn != NULL);

    fread (retVal, sizeof (char), getFileSize (fileName), fIn);

    retVal[getFileSize (fileName)] = '\0';

    return retVal;
}

Nod* sizeUp (Nod* buffer, size_t* size, size_t* cap){

    if (*size < *cap) return buffer;

    Nod* retVal = (Nod*) calloc (*cap * 2, sizeof (Nod));
    assert (retVal != NULL);

    memcpy (retVal, buffer, *cap * sizeof (Nod));
    *cap *= 2;

    return retVal;
}

Nod* bufferize (const char* fileName) {

    assert (fileName != NULL);

    char* code = bufferizeFile (fileName);
    assert (code != NULL);

    int iter = 0;

    char word[MAX_WORD_LEN] = "";
    int delta = 0;

    size_t cap  = 4;
    size_t size = 0;
    Nod* buffer = (Nod*) calloc (cap, sizeof (Nod));
    assert (buffer != NULL);

    for (;;) {

        if (sscanf (code + iter, " %[^][+-*/;,(){}<>=]%n", word, &delta) == EOF) break;
        iter += delta;

        unsigned int hashWord = countHash (word, word + strlen (word));

        buffer = sizeUp (buffer, &size, &cap);
        assert (buffer != NULL);

        for (int i = 0; i <= NOD_TYPE_CNT; i++)
            if (i == NOD_TYPE_CNT) {

                buffer[size] = Nod (BLANK, word);
                size++;
            }
            else if (0 <= (int) Syntax[i] and Syntax[i] == hashWord) {

                buffer[size] = Nod ((NodType) i, 0);
                size++;

                break;
            }


        if (sscanf (code + iter, " %[][+-*/;,(){}<>=]%n", word, &delta) == EOF) break;
        iter += delta;

        hashWord = countHash (word, word + strlen (word));

        buffer = sizeUp (buffer, &size, &cap);
        assert (buffer != NULL);

        for (int i = 0; i <= NOD_TYPE_CNT;i++) 
            if (i == NOD_TYPE_CNT) {

                buffer[size] = Nod (BLANK, word);
                size++;
            }
            if (0 <= (int) Syntax[i] and Syntax[i] == hashWord) {

                buffer[size] = Nod ((NodType) i, 0);
                size++;

                break;
            }
            

        
    }
}

