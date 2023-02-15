#pragma once
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <assert.h>
#include <sys/stat.h>
#include <string.h>
#include "../lib/nbtree.h"

#define SERVICE_SYMBOLS "]+[&/;,();}<>=--"

size_t getFileSize (const char* fileName);

char* bufferizeFile (const char* fileName);

Nod* sizeUp (Nod* buffer, size_t* size, size_t* cap);

Nod* bufferize (const char* fileName, size_t* _size, size_t* _cap);

int readNumber (Nod* *buffer, size_t* size, size_t* cap, char* code, char* word);

int readChar (Nod* *buffer, size_t* size, size_t* cap, char* code, char* word);

int readStr (Nod* *buffer, size_t* size, size_t* cap, char* code, char* word);

int readNonService (Nod* *buffer, size_t* size, size_t* cap, char* code, char* word);

int readService (Nod* *buffer, size_t* size, size_t* cap, char* code, char* word);

Tree Get_G (Nod* buffer, size_t size);

void Get_1 (Tree* tree, Nod* iter, Nod** token);

void Get_2 (Tree* tree, Nod* iter, Nod** token);

void Get_3 (Tree* tree, Nod* iter, Nod** token);

void Get_4 (Tree* tree, Nod* iter, Nod** token);

void Get_5 (Tree* tree, Nod* iter, Nod** token);

void Get_6 (Tree* tree, Nod* iter, Nod** token);

void dumpNodArray (Nod* array, size_t cap);