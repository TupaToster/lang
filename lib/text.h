#pragma once
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <assert.h>
#include <sys/stat.h>
#include <string.h>

size_t getFileSize (const char* fileName);

char* bufferizeFile (const char* fileName);