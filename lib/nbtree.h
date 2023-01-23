#pragma once
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <assert.h>
#include "flog.h"
#include "vector.h"

#ifndef NDEBUG
#define dump(clas) (clas).dumpInside (#clas, __FILE__, __FUNCTION__, __LINE__)
#define nsdump(clas, func) (clas).dumpInside (#clas, __FILE__, __FUNCTION__, __LINE__, func)
#else
#define dump(clas) ;
#define nsdump(clas) ;
#endif

#define Pow2After_size(size) (1 << ((size_t) ceil (log2 (size))))

struct Nod {

    double val = 0;
    Vector<Nod*> next;
    Nod* prev = NULL;
    int num = -1;

    Nod (double _val = 0, Nod** _next = NULL, Nod* _prev = NULL, int _num = -1) : val (_val), num (_num), prev (_prev) {//<_next MUST end with a NULL element

        while (_next != NULL and *_next != NULL) next.push_back (*(_next++));
    }
};

class Tree {

    static constexpr unsigned int       CANL      = 0xDEADBEEF; ///< Left cannary of a structure
    static constexpr unsigned int       CANR      = 0xD34DB33F; ///< Right cannary of a structure
    static constexpr unsigned char      POISON1   = 0xBD; ///< 1 byte Poison
    static constexpr unsigned short     POISON2   = 0xBDCF; ///< 2 byte Poison
    static constexpr unsigned int       POISON4   = 0xBADC0FEE; ///< 4 byte Poison
    static constexpr unsigned long long POISON8   = 0xBADC0FEEF04DED32; ///< 8 byte Poison
    static constexpr unsigned int       MULT      = 37u; ///< Multiplier for hash
    static constexpr unsigned int       MAX_RANKS = 500;

    enum errorCodes {
        ok                   = 0,    ///< All ok
        POISON_ACCESS        = 1<<0, ///< One or more struct elements is poison
        BAD_CAN_L            = 1<<1, ///< Dead left cannary of structure
        BAD_CAN_R            = 1<<2, ///< Dead right cannary of structure
        BAD_data_CAN_L       = 1<<3, ///< Dead left cannary of  data
        BAD_data_CAN_R       = 1<<4, ///< Dead right cannary of data
        NULL_data_PTR        = 1<<5, ///< NULL ptr for data
        NULL_data_CAN_L_PTR  = 1<<6, ///< NULL ptr for left  data cannary
        NULL_data_CAN_R_PTR  = 1<<7, ///< NULL ptr for right data cannary
        WRONG_SIZE           = 1<<8, ///< Something wrong with size var
        POISONED_ERRCOD      = 1<<9, ///< Errcod variable is poisoned; Ususally means that struct has been destructed
        WRONG_HASH           = 1<<10 ///< Hash was changed without any changes from specified function
    };

    unsigned int   canL      = CANL; ///< left cannary of struct
    unsigned int   hash      = 0;    ///< hash value
    size_t         errCode   = ok;   ///< error code
    Nod            data;             ///< Ptr to data
    size_t         size      = 0;
    unsigned int*  dataCanL  = NULL; ///< left cannary of data
    unsigned int*  dataCanR  = NULL; ///< right cannary of data
    unsigned int   canR      = CANR; ///< right cannary of struct

    template<typename varType>
    void setPoison (varType* var) {

        if (var == NULL) return;

        switch(sizeof (varType)) {
            case 1 : *((unsigned char*     ) var) = POISON1; break;
            case 2 : *((unsigned short*    ) var) = POISON2; break;
            case 4 : *((unsigned int*      ) var) = POISON4; break;
            case 8 : *((unsigned long long*) var) = POISON8; break;

            default:
                memset (var, POISON1, sizeof (varType));
            break;
        }
    }

    template<typename varType>
    bool isPoison (varType* var) {

        if (var == NULL) return 1;

        switch(sizeof (varType)) {

            case 1:
                if ( *( (unsigned char*     ) &var) == POISON1) return 1;
                else                                            return 0;
            break;

            case 2:
                if ( *( (unsigned short*    ) &var) == POISON2) return 1;
                else                                            return 0;
            break;

            case 4:
                if ( *( (unsigned int*      ) &var) == POISON4) return 1;
                else                                            return 0;
            break;

            case 8:
                if ( *( (unsigned long long*) &var) == POISON8) return 1;
                else                                            return 0;
            break;

            default:
                for (int i = 0; i < sizeof (varType); i++) {

                    if (*( ( (unsigned char*) &var) + i) != POISON1) return 0;
                }
            return 1;
            break;
        }
    }

    void countHashSeg (void* left, void* right) {

        assert (left != NULL);
        assert (right != NULL);
        assert (left <= right);

        for (; left <= right; left++) {

            hash += ((unsigned int) * (char*) left);
            hash *= MULT;
        }
    }

    unsigned int countHash () {

        hash = 0;

        countHashSeg (&canL, &canR);

        return hash;
    }

    bool verifyHash () {

        if (countHash () != hash) {

            errCode |= WRONG_HASH;
            return false;
        }
        return true;
    }

    size_t errCheck () {

        if (isPoison (&errCode)) {

            errCode = POISONED_ERRCOD;
            return errCode;
        }

        verifyHash ();

        if (isPoison (&canL    )
        or  isPoison (&canR    )
        or  isPoison (&data    )
        or  isPoison (&dataCanL)
        or  isPoison ( dataCanL)
        or  isPoison (&dataCanR)
        or  isPoison ( dataCanR)
        or  isPoison (&hash    )) errCode |= POISON_ACCESS;

        if      (canL != CANL      ) errCode |= BAD_CAN_L;
        if      (canR != CANR      ) errCode |= BAD_CAN_R;
        if      (dataCanL == NULL  ) errCode |= NULL_data_CAN_L_PTR;
        else if (*dataCanL != CANL ) errCode |= BAD_data_CAN_L;
        if      (dataCanR == NULL  ) errCode |= NULL_data_CAN_R_PTR;
        else if (*dataCanR != CANR ) errCode |= BAD_data_CAN_R;
        if      (data == NULL      ) errCode |= NULL_data_PTR;

        countHash ();

        return errCode;
    }

    void logPrintErrors () {

        errCheck ();

        char names [11][30] = {};
        int iter = 0;
        if (errCode & POISON_ACCESS        ) strcpy (names[iter++], "\t\t[POISON_ACCESS       ]<br>");
        if (errCode & BAD_CAN_L            ) strcpy (names[iter++], "\t\t[BAD_CAN_L           ]<br>");
        if (errCode & BAD_CAN_R            ) strcpy (names[iter++], "\t\t[BAD_CAN_R           ]<br>");
        if (errCode & BAD_data_CAN_L       ) strcpy (names[iter++], "\t\t[BAD_data_CAN_L      ]<br>");
        if (errCode & BAD_data_CAN_R       ) strcpy (names[iter++], "\t\t[BAD_data_CAN_R      ]<br>");
        if (errCode & NULL_data_PTR        ) strcpy (names[iter++], "\t\t[NULL_data_PTR       ]<br>");
        if (errCode & NULL_data_CAN_L_PTR  ) strcpy (names[iter++], "\t\t[NULL_data_CAN_L_PTR ]<br>");
        if (errCode & NULL_data_CAN_R_PTR  ) strcpy (names[iter++], "\t\t[NULL_data_CAN_R_PTR ]<br>");
        if (errCode & WRONG_SIZE           ) strcpy (names[iter++], "\t\t[WRONG_SIZE          ]<br>");
        if (errCode & POISONED_ERRCOD      ) strcpy (names[iter++], "\t\t[POISONED_ERRCOD     ]<br>");
        if (errCode & WRONG_HASH           ) strcpy (names[iter++], "\t\t[WRONG_HASH          ]<br>");

        if (iter == 0) flogprintf ( "\t\t[ok]<br>")
        else
            for (int i = 0; i < iter; i++) flogprintf ( "%s", names[i])

    }

    void TreeGraphDump (void (*dumpFunc) (Nod* val) = NULL) {

        static int GraphDumpCounter = 0;

        if (GraphDumpCounter == 0) system ("rm *.png");

        #define picprintf(...) fprintf (picSource, __VA_ARGS__);

        char srcName[] = "GraphDumpSrc.dot";
        FILE* picSource = fopen (srcName, "w");

        char picName[30] = "";
        sprintf (picName, "GraphDump_%d.png", GraphDumpCounter);

        picprintf ("digraph Tree_%d {" "\n", GraphDumpCounter);
        picprintf ("\t" "graph [dpi = 150];" "\n");
        picprintf ("\t" "bgcolor = \"252525\"" "\n");
        picprintf ("\t" "rankdir = TB" "\n");

        int ranks[MAX_RANKS][MAX_RANKS + 1] = {0};
        int NodNum = 0;

        errCheck ();

        PrintNod (data, &NodNum, 0, picSource, ranks, dumpFunc);

        countHash ();

        for (int i = 0; i < MAX_RANKS and ranks[i][0] != 0; i++) {

            picprintf ("\t" "{rank = same; ");

            for (int j = 1; j <= ranks[i][0]; j++) picprintf (" Nod_%d;" ranks[i][j]);

            picprintf ("}\n");
        }

        PrintConnections (data, picSource);

        picprintf ("}");

        fclose (picSource);

        char command[40] = "";
        sprintf (command, "dot -Tpng %s -o %s", srcName, picName);

        system (command);

        flogprintf ("<h2>Tree dump</h2><br>");
        flogprintf ("<img src = \"%s\" style = \"width: 55%%;height: auto\"><br>");

        GraphDumpCounter++;

        #undef picprintf
    }

    void PrintNod (Nod* nod, int* num, int depth, FILE* picSource, int ranks[MAX_RANKS][MAX_RANKS + 1], void (*dumpFunc) (Nod* val) = NULL) {

        #define picprintf(...) fprintf (picSource, __VA_ARGS__);

        nod->num = *num;

        ranks[depth][0]++;
        ranks[depth][ranks[depth][0]] = *num;

        picprintf ("\t" "\"Nod_%d\" [shape = \"Mrecord\", style = \"filled\", fillcolor = \"1ed5f2\", label = \"{<prev> Prev = &ltp;%p&rt; | Current = &lt;%p&rt; | Value = &lt;", nod->num, nod->prev, nod);
        if (dumpFunc != NULL) dumpFunc (nod);
        else picprintf (getFormat (nod->val), nod->val);

        picprintf ("&rt; | {next[%d] : |", nod->next._size());

        for (int i = 0; i < nod->next._size(); i++) {

            picprintf ("{ [%d] | <next_%d>&lt;%p&rt; }", i, i, *nod->next.get(i));
            if (i != nod->next._size() - 1) picprintf (" | ");
        }

        *nod += 1;

        for (int i = 0; i < nod->next._size(); i++) PrintNod (nod->next[i], num, depth+1, picSource, ranks);

        #undef picprintf

    }

    void PrintConnections (Nod* nod, FILE* picSource) {

        #define picprintf(...) fprintf (picSource, __VA_ARGS__);

        for (int i = 0; i < nod->next._size(); i++) {

            picprintf ("\t" "\"Nod_%d\":next_%d -> \"Nod_%d\":prev [color = \"#36f70f\"];\n", nod->num, i, nod->next.get(i)->num);
            PrintConnections (*nod->next.get(i), picSource);
        }

        #undef picprintf
    }

    public:

    Tree (int _size = 1) : canL (CANL), canR (CANR), hash (0), errCode (ok), size (_size) {

        dataCanL = (unsigned int*) calloc (cap * sizeof (Nod) + 2 * sizeof (unsigned int), 1);
        assert (dataCanL != NULL);

        data = (Nod*) (dataCanL + 1);
        assert (data != NULL);

        dataCanR = (unsigned int*) (data + cap);
        assert (dataCanR != NULL);

        *dataCanL = CANL;
        *dataCanR = CANR;

        countHash ();
    }

    void dumpInside (const char* name, const char* fileName, const char* funcName, size_t line, void (*dumpFunc) (Nod* obj) = NULL) {

        flogprintf ("<pre>" "In file %s, function %s, line %llu, Tree named \"%s\" was dumped :<br>",
                    fileName, funcName, line, name);

        flogprintf ("\t" "Errors : <br>");

        logPrintErrors ();

                                         flogprintf ( "\t" "hash     = %u (", hash);
        if      ( isPoison (&hash)     ) flogprintf ( "POISONED)<br>")
        else                             flogprintf ( "ok)<br>")

                                         flogprintf ( "\t" "canL     = 0x%X (", canL);
        if      ( isPoison (&canL)     ) flogprintf ( "POISONED)<br>")
        else if ( canL      == CANL    ) flogprintf ( "ok)<br>")
        else                             flogprintf ( "NOT_OK)<br>")

                                         flogprintf ( "\t" "canR     = 0x%X (", canR);
        if      ( isPoison (&canR)     ) flogprintf ( "POISONED)<br>")
        else if ( canR      == CANR    ) flogprintf ( "ok)<br>")
        else                             flogprintf ( "NOT_OK)<br>")

                                         flogprintf ( "\t" "cap      = %llu (", cap);
        if      ( isPoison (&cap)      ) flogprintf ( "POISONED)<br>")
        else                             flogprintf ( "ok)<br>")

                                         flogprintf ( "\t" "size     = %llu (", size);
        if      ( isPoison (&size)     ) flogprintf ( "POISONED)<br>")
        else                             flogprintf ( "ok)<br>")

                                         flogprintf ( "\t" "dataCanL = 0x%X (", *dataCanL);
        if      (isPoison (dataCanL)   ) flogprintf ( "POISONED)<br>")
        else if (*dataCanL == CANL     ) flogprintf ( "ok)<br>")
        else                             flogprintf ( "NOT_OK)<br>")

                                         flogprintf ( "\t" "dataCanR = 0x%X (", *dataCanR);
        if      (isPoison (dataCanR)   ) flogprintf ( "POISONED)<br>")
        else if (*dataCanR == CANR     ) flogprintf ( "ok)<br>")
        else                             flogprintf ( "NOT_OK)<br>")

        if (data != NULL and !isPoison (data)) {

            TreeGraphDump ();
        }

        flogprintf ("<hr>");
    }

    void DTOR () {

        setPoison (&errCode);
        setPoison (&canL);
        setPoison (&canR);
        setPoison (&hash);
        setPoison (&size);
        setPoison (&cap);

        if (dataCanL != NULL) {

            setPoison (dataCanL);
            for (; (void*) data <= (void*) dataCanR; data++) setPoison (data);
            free (dataCanL);
            setPoison (&dataCanL);
            setPoison (&data);
            setPoison (&dataCanR);
        }
    }
};
