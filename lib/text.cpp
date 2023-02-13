#include "text.h"

size_t getFileSize (const char* fileName) {

    assert (fileName != NULL);

    struct stat temp = {};

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
