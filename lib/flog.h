#pragma once
#include <stdio.h>
#include <stdlib.h>
#include <typeinfo>
#include <time.h>
#include <string.h>
#include <assert.h>

// DEFINE NDEBUG TO DISABLE LOGS

#ifndef NDEBUG
#define dump(clas) (clas).dumpInside (#clas, __FILE__, __FUNCTION__, __LINE__) ///< NEW_STRUCT dump macros
#else
#define dump(clas) ;
#endif

extern FILE* logOutf;

extern const unsigned int HashMult;

unsigned int countHash (void* from, void* to);

void flogIntern (const void* val, const char* varType, const char* varName, size_t varSize, const char* fileName, const char* funcName, size_t line);

const char* getFormatIntern (const char* varType);

#define getFormat(var) getFormatIntern (typeid (var).name ())


#define flog(a)                                                                                                   \
            {if (logOutf == NULL){                                                                                 \
                logOutf = fopen ("logs_out.html", "w");                                                           \
                setvbuf (logOutf, NULL, _IONBF, 0);                                                               \
                fprintf (logOutf, "<pre>----------------------------------------\n"                              \
                "<style> body {padding: 25px; background-color: #252525; color: white; font-size: 25px;} </style>"\
                "Logging session at compiled time : %s %s<br><br></pre>\n\n", __TIME__, __DATE__);                \
            }                                                                                                     \
            flogIntern (&a, typeid (a).name (), #a, sizeof (a), __FILE__, __FUNCTION__, __LINE__);}

#define flogprintf(...)                                                                                           \
    {if (logOutf == NULL){                                                                                        \
                logOutf = fopen ("logs_out.html", "w");                                                           \
                setvbuf (logOutf, NULL, _IONBF, 0);                                                               \
                fprintf (logOutf, "<pre>----------------------------------------\n"                             \
                "<style> body {padding: 25px; background-color: #252525; color: white; font-size: 25px;} </style>"\
                "Logging session at compiled time : %s %s<br><br></pre>\n\n", __TIME__, __DATE__);                \
    }                                                                                                             \
    fprintf (logOutf, __VA_ARGS__);}

#ifdef NDEBUG
#define flog(a) ;
#define flogFileInit ;
#endif