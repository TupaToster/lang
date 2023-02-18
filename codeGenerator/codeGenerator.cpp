#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <assert.h>
#include <sys/stat.h>
#include <string.h>
#include "../lib/flog.h"
#include "../lib/text.h"

const char* ENUM = "./lib/enum_autogen.h";
const char* SYNTAXCPP = "./lib/syntax_autogen.cpp";
const char* SYNTAXH = "./lib/syntax_autogen.h";
const char* FRONTCPP_INCLUDE = "./front/front_autogen.cpp";
const char* FRONTH_INCLUDE = "./front/front_autogen.h";

#define WARNINGMESSAGE "//!!!!!!!!!! This file is generated automatically. To change it's contents, please change source file for auto generation. !!!!!!!\n"

#define MAX_WORD_LEN 100

int main (int argc, char* argv[]) {

    if (argc != 2) {

        printf ("Right usage: ./codeGenerator.exe <sourceFile>");
        return 0;
    }

    char* src = bufferizeFile (argv[1]);
    assert (src != NULL);
    int iter = 0;
    int delta = 0;

    FILE* enumFile = fopen (ENUM, "wb");
    FILE* syntax_cpp = fopen (SYNTAXCPP, "wb");
    FILE* syntax_h = fopen (SYNTAXH, "wb");
    FILE* front_cpp = fopen (FRONTCPP_INCLUDE, "wb");
    FILE* front_h = fopen (FRONTH_INCLUDE, "wb");
    assert (enumFile != NULL);
    assert (syntax_cpp != NULL);
    assert (syntax_h != NULL);
    assert (front_cpp != NULL);
    assert (front_h != NULL);

    setvbuf (enumFile, NULL, _IONBF, 0);
    setvbuf (syntax_cpp, NULL, _IONBF, 0);
    setvbuf (syntax_h, NULL, _IONBF, 0);
    setvbuf (front_cpp, NULL, _IONBF, 0);
    setvbuf (front_h, NULL, _IONBF, 0);

    fprintf (enumFile, WARNINGMESSAGE "enum NodType {\n\nBLANK = 0,\n");
    fprintf (syntax_cpp, WARNINGMESSAGE "const char* SyntaxStrings[] = {\n\n");
    fprintf (syntax_h, WARNINGMESSAGE "#pragma once\n"
                       "unsigned int countHash (void* from, void* to);\n"
                       "extern unsigned int Syntax[];\n"
                       "extern const char* SyntaxStrings[];");
    fprintf (front_cpp, WARNINGMESSAGE);
    fprintf (front_h, WARNINGMESSAGE);
    fclose (syntax_h);

    char* SyntaxStrings[100] = {0};

    SyntaxStrings[0] = strdup ("_BLANK");

    char word[MAX_WORD_LEN] = "";
    int intInput = 0;
    int enumCnt = 1;
    while (sscanf (src + iter, " DEFCMD ( %[^, ]%n", word, &delta) > 0) {

        iter += delta;
        fprintf (enumFile, "%s = %d,\n", word, enumCnt);

        if (sscanf (src + iter, " , \"%[^\"]\"%n", word, &delta) < 1) return __LINE__;
        iter += delta;

        SyntaxStrings[enumCnt] = strdup (word);

        if (sscanf (src + iter, " , %d%n", &intInput, &delta) < 1) return __LINE__;
        iter += delta;

        if (intInput == 1) {

            fprintf (front_cpp, "void Get_%d (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {\n"
            "    assert (tree != NULL);\n"
            "    assert (iter != NULL);\n"
            "    assert (token != NULL);\n"
            "    assert (inSize);\n\n"
            "    Get_%d (tree, iter, token, varTable, funcTable);\n"
            "    while (Token->type == %d) {\n"
            "        set (tree, {\n"
            "            Nod* target = iter->pop_back ();\n"
            "            iter->push_back (Token);\n"
            "            Token->prev = iter;\n"
            "            Token->push_back (target);\n"
            "            target->prev = Token;\n"
            "        })\n"
            "        Token++;\n"
            "        Get_%d (tree, Token - 1, token, varTable, funcTable);\n"
            "    }\n"
            "}\n", enumCnt, enumCnt + 1, enumCnt, enumCnt + 1);

            delta = 0;
            sscanf (src + iter, " )%n", &delta);
            if (delta == 0) return __LINE__;
            iter += delta;

            fprintf (front_h, "void Get_%d (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable);\n\n", enumCnt);
        }
        else if (intInput == 2){

            fprintf (front_cpp, "void Get_%d (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {\n"
            "    assert (tree != NULL);\n"
            "    assert (iter != NULL);\n"
            "    assert (token != NULL);\n"
            "    assert (inSize);\n\n", enumCnt);

            delta = 0;
            sscanf (src + iter, " , {%n", &delta);
            if (delta == 0) return __LINE__;
            iter += delta;

            int cnt = 1;
            for (delta = 0; iter + delta < strlen (src);delta++) {

                if (src[iter + delta] == '{') cnt++;
                else if (src[iter + delta] == '}') cnt--;

                if (cnt == 0) break;
            }

            for (int i = 0; i <= delta; i++) {

                if (strncmp ("call_next", src + iter + i, 9) == 0) {

                    fprintf (front_cpp, "Get_%d", enumCnt + 1);
                    i += 9;
                }
                else fprintf (front_cpp, "%c", src[iter + i]);
            }

            fprintf (front_cpp, "\n");

            iter += delta + 1;

            delta = 0;
            sscanf (src + iter, " )%n", &delta);
            if (delta == 0) return __LINE__;
            iter += delta;

            fprintf (front_h, "void Get_%d (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable);\n\n", enumCnt);
        }
        else if (intInput == 3) {

            fprintf (front_cpp, "void Get_%d (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {\n"
            "    assert (tree != NULL);\n"
            "    assert (iter != NULL);\n"
            "    assert (token != NULL);\n"
            "    assert (inSize);\n\n"
            "    if (Token->type == %d) {\n"
            "        set (tree, {\n"
            "            Token->prev = iter;\n"
            "            iter->push_back (Token);\n"
            "            Token++;\n"
            "        })\n"
            "    }\n"
            "    else Get_%d (tree, iter, token, varTable, funcTable);\n"
            "}\n", enumCnt, enumCnt, enumCnt + 1);

            delta = 0;
            sscanf (src + iter, " )%n", &delta);
            if (delta == 0) return __LINE__;
            iter += delta;

            fprintf (front_h, "void Get_%d (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable);\n\n", enumCnt);
        }
        else if (intInput == 0){

            delta = 0;
            sscanf (src + iter, " )%n", &delta);
            if (delta == 0) return __LINE__;
            iter += delta;

            fprintf (front_cpp, "void Get_%d (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {\n"
                    "    // This is a buffer function that allows to write call_next in terminal functions in codeGenSrc\n"
                    "    Get_%d (tree, iter, token, varTable, varTable);\n"
                    "}\n", enumCnt, enumCnt + 1);

            fprintf (front_h, "void Get_%d (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable);\n\n", enumCnt);

        }
        else return __LINE__;

        enumCnt++;
    }

    fprintf (front_cpp, "void Get_%d (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {\n"
            "    // This is a buffer function that allows to write call_next in terminal functions in codeGenSrc\n"
            "    printf (\"Wrong token on ptr: %%p, stopping Get\", Token);\n"
            "    assert (\"Wrong token here!\" == NULL);\n"
            "}\n", enumCnt);

    fprintf (front_h, "void Get_%d (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable);\n\n", enumCnt);


    fprintf (enumFile, "NOD_TYPE_CNT = %d\n};", enumCnt);

    for (int i = 0; i < enumCnt; i++) {

        fprintf (syntax_cpp, "\"%s\",\n", SyntaxStrings[i]);
    }

    fprintf (syntax_cpp, "\"_NOD_TYPE_CNT\"\n};\n\nunsigned int Syntax[] = {\n\n");

    for (int i = 0; i < enumCnt; i++) {

        fprintf (syntax_cpp, "%uu,\n", SyntaxStrings[i][0] == '_' ? 0 : countHash (SyntaxStrings[i], SyntaxStrings[i] + strlen (SyntaxStrings[i])));
    }

    fprintf (syntax_cpp, "0u\n};");

    fclose (enumFile);
    fclose (syntax_cpp);
    fclose (front_cpp);
    fclose (front_h);
}