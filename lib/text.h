#pragma once
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <assert.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <ctype.h>
#include <string.h>
#include "flog.h"

size_t getFileSize (const char* fileName);

char* bufferizeFile (const char* fileName, size_t* size = NULL);

struct Line {

    char* begin = NULL;
    char* end   = NULL;

    Line () : begin (NULL), end (NULL) {}

    Line (char* _begin, char* _end) : begin (_begin), end (_end) {}

    void DTOR () {

        begin = NULL;
        end = NULL;
    }
};

struct Text {

    char* txt = NULL;
    size_t size = 0;
    Line* lines = NULL;
    size_t lineCnt = 0;

    Text () : txt (NULL), size (0), lines (NULL), lineCnt (0) {}

    Text (char* fileName) {

        assert (fileName != NULL);

        txt = bufferizeFile (fileName, &size);
        assert (txt != NULL);

        cntLines ();

        lines = (Line*) calloc (lineCnt, sizeof (Line));
        assert (lines != NULL);

        for (int i = 0; i < lineCnt; i++) lines[i] = Line ();

        separateLines ();
    }

    void cntLines () {

        assert (txt != NULL);

        lineCnt = 1;

        for (int i = 0; i < size; i++)
            if (txt[i] == '\n') lineCnt++;
    }

    void separateLines () {

        assert (lines != NULL);

        Line* lineIter = lines;
        for (size_t i = 0; i < size; i++) {

            if (lineIter->begin == NULL) lineIter->begin = txt + i;

            if (txt[i] == '\n') {

                lineIter->end = txt + i;
                lineIter++;
            }
        }

        lineIter->end = txt + size;
    }

    void DTOR () {

        free (txt);

        size = 0;

        for (int i = 0; i < lineCnt; i++) lines[i].DTOR ();

        lineCnt = 0;
    }

    void dumpInside (const char* name, const char* filename, const char* funcName, size_t line) {

        flogprintf ("<pre>" "In file %s, function %s, line %llu, Text named %s was dumped : <br>",
            filename, funcName, line, name);

        flogprintf ("\t" "txt[%d] = &lt;", size);

        for (int i = 0; i < size; i++) flogprintf ("|%.2X|", txt[i])

        flogprintf ("&gt;\n");

        flogprintf ("\t" "lines[%d] = {<br>", lineCnt);

        for (int i = 0; i < lineCnt; i++) {

            flogprintf ("\t\t" "<%p : %p : &lt;%.*s&gt;&gt;<br>", lines[i].begin, lines[i].end, lines[i].end - lines[i].begin, lines[i].begin);
        }

        flogprintf ("\t""}<br>");

        flogprintf ("</pre><hr>");
    }
};