#pragma once
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <assert.h>
#include <sys/stat.h>
#include "../lib/flog.h"
#include "../lib/nbtree.h"

size_t getFileSize (const char* fileName);

char* bufferizeFile (const char* fileName);

Nod* sizeUp (Nod* buffer, size_t* size, size_t* cap);

Nod* bufferize (const char* fileName, size_t* _size, size_t* _cap);
