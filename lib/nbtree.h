#pragma once
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <assert.h>
#include <string.h>
#include "flog.h"
#include "stack.h"
#include "text.h"

#ifndef NDEBUG
#define dump(clas) (clas).dumpInside (#clas, __FILE__, __FUNCTION__, __LINE__)
#define nsdump(clas, func) (clas).dumpInside (#clas, __FILE__, __FUNCTION__, __LINE__, func)
#else
#define dump(clas) ;
#define nsdump(clas) ;
#endif

#define Pow2After(val) (1 << ((size_t) ceil (log2 (val))))

#define set(tree, code) {tree->verifyHash (); code tree->countHash ();}

#include "enum_autogen.h"
#include "syntax_autogen.h"

union NodVal {

    int I;
    double LF;
    char C;
    char* STR;

    NodVal () : LF (0) {}
    NodVal (int intVal) : I (intVal) {}
    NodVal (double doubleVal) : LF (doubleVal) {}
    NodVal (char charVal) : C (charVal) {}

    NodVal (char* strVal) {

        if (strVal == NULL) {

            STR = NULL;
            return;
        }

        STR = strdup (strVal);
        assert (STR != NULL);
    }
};

//Defines to determine how to interpret NodVal depending on NodType

#define IS_INT(type) (type == INT_CONST or type == INT)
#define IS_DOUBLE(type) (type == DOUBLE_CONST or type == DOUBLE)
#define IS_CHAR(type) (type == CHAR_CONST or type == CHAR)
#define IS_STR(type) (type == BLANK or type == STR_CONST or type == VAR or type == FUNC or type == STR)

#define MAX_WORD_LEN 100

struct Nod {

    NodType type = BLANK;
    NodVal val = 0;
    Nod** next = NULL;
    size_t size = 0;
    size_t cap = 0;
    Nod* prev = NULL;
    int num = -1;

    void resize () {

        if (size > cap * 3 / 8 and size < cap or size < cap and cap == 4) return;

        Nod** temp = NULL;

        if (cap > 4 and size <= cap * 3 / 8) cap /= 2;
        else if (size == cap) cap *= 2;

        temp = (Nod**) calloc (cap, sizeof (Nod*));
        assert (temp != NULL);

        memcpy (temp, next, size * sizeof (Nod**));
        free (next);
        next = temp;
    }

    void push_back (Nod* val) {

        resize ();

        next[size] = val;
        size++;
    }

    Nod* pop_back () {

        if (size == 0) return NULL;

        Nod* temp = next[size - 1];
        next[size - 1] = NULL;
        size--;

        resize ();

        return temp;
    }

    /// @warning Use only in extreme cases cause O(size)
    void insert (size_t index, Nod* val) {

        if (index >= size) push_back (val);
        else {

            push_back (val);

            for (int i = size - 1; i > index; i--) {

                Nod* temp = next[i - 1];
                next[i - 1] = next[i];
                next[i] = temp;
            }
        }
    }

    /// @warning Use only in extreme cases cause O(size)
    Nod* erase (size_t index) {

        if (size == 0) return NULL;

        if (index >= size - 1) return pop_back ();
        else {

            for (int i = index; i < size - 1; i++) {

                Nod* temp = next[i];
                next[i] = next[i + 1];
                next[i + 1] = temp;
            }

            return pop_back ();
        }
    }

    Nod (NodType _type = BLANK, NodVal _val = 0.0, Nod** _next = NULL, size_t _nextSize = 0, Nod* _prev = NULL, int _num = -1)
        : type (_type), prev (_prev), num (_num) {

        if (IS_STR (type)) {

            if (_val.STR == NULL) val.STR = NULL;
            else val.STR = _val.STR;
        }
        else val = _val;

        if (_next == NULL) {

            cap = 4;
            size = 0;
        }
        else {

            cap = __max (4, Pow2After (_nextSize));
            size = _nextSize;
        }

        next = (Nod**) calloc (cap, sizeof (Nod*));
        assert (next != NULL);

        memcpy (next, _next, _nextSize * sizeof (Nod*));
    }

    /// @brief Basically a copy of assign made to prevent creating var, destructing and refilling with data when initalized from another var
    /// @param src ptr to Nod that is to be copied into this Nod
    /// @warning Destructs this struct if it existed. Also please make sure src is a valid Nod struct.
    Nod (const Nod* src) {

        assert (src != NULL);

        type = src->type;
        prev = src->prev;
        num = src->num;

        if (! IS_STR (type)) val = src->val;
        else val = src->val.STR;

        cap = src->cap;
        size = src->size;

        next = (Nod**) calloc (cap, sizeof (Nod*));
        assert (next != NULL);

        memcpy (next, src->next, size * sizeof (Nod*));
    }

    void DTOR () {

        type = BLANK;
        val = 0.0;
        if (next != NULL) {
            for (int i = 0; i < cap; i++) next[i] = NULL;
            free (next);
        }
        cap = 0;
        size = 0;
        prev = NULL;
        next = NULL;
        num = -1;
    }

    /// @warning Destructs this struct if it existed. Also please make sure src is a valid Nod struct.
    void assign (const Nod* src) {

        assert (src != NULL);

        if (prev != NULL) DTOR ();

        type = src->type;
        prev = src->prev;
        num = src->num;

        if (!IS_STR (type)) val = src->val;
        else val = src->val.STR;

        cap = src->cap;
        size = src->size;

        next = (Nod**) calloc (cap, sizeof (Nod*));
        assert (next != NULL);

        memcpy (next, src->next, size * sizeof (Nod*));
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
    static constexpr unsigned int       MIN_CAP   = 4;

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
    size_t         cap       = 0;
    size_t         size      = 0;
    Nod*           vacant    = NULL;
    Nod*           data      = NULL; ///< Ptr to data
    unsigned int*  dataCanL  = NULL;
    unsigned int*  dataCanR  = NULL;
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

        for (; left <= right; left = ((char*) left) + 1) {

            hash += ((unsigned int) * (char*) left);
            hash *= MULT;
        }
    }

    size_t errCheck () {

        if (isPoison (&errCode)) {

            errCode = POISONED_ERRCOD;
            return errCode;
        }


        verifyHash ();

        if (isPoison (&canL    )
        or  isPoison (&canR    )
        or  isPoison (&hash    )
        or  isPoison (&cap     )
        or  isPoison (&size    )
        or  isPoison (&vacant  )
        or  isPoison (&data    )
        or  isPoison (data     )
        or  isPoison (&dataCanL)
        or  isPoison (dataCanL )
        or  isPoison (&dataCanR)
        or  isPoison (dataCanR )) errCode |= POISON_ACCESS;

        if      ( canL != CANL      ) errCode |= BAD_CAN_L;
        if      ( canR != CANR      ) errCode |= BAD_CAN_R;
        if      ( cap < size        ) errCode |= WRONG_SIZE;
        if      ( dataCanL == NULL  ) errCode |= NULL_data_CAN_L_PTR;
        else if (*dataCanL != CANL  ) errCode |= BAD_data_CAN_L;
        if      ( dataCanR == NULL  ) errCode |= NULL_data_CAN_R_PTR;
        else if (*dataCanR != CANR  ) errCode |= BAD_data_CAN_R;
        if      (data == NULL       ) errCode |= NULL_data_PTR;

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

    void TreeGraphDump () {

        static int GraphDumpCounter = 0;

        if (GraphDumpCounter == 0) system ("rm *.png");

        #define picprintf(...) fprintf (picSource, __VA_ARGS__);

        char srcName[] = "GraphDumpSrc.dot";
        FILE* picSource = fopen (srcName, "w");
        setvbuf (picSource, NULL, _IONBF, 0);


        char picName[30] = "";
        sprintf (picName, "GraphDump_%d.png", GraphDumpCounter);

        picprintf ("digraph Tree_%d {" "\n", GraphDumpCounter);
        picprintf ("\t" "graph [dpi = 200];" "\n");
        picprintf ("\t" "bgcolor = \"#252525\"" "\n");
        picprintf ("\t" "rankdir = TB" "\n");
        // picprintf ("\t" "splines = ortho" "\n");

        int ranks[MAX_RANKS][MAX_RANKS + 1] = {0};
        int NodNum = 0;

        errCheck ();

        PrintNod (data, &NodNum, 0, picSource, ranks);

        countHash ();

        for (int i = 0; i < MAX_RANKS and ranks[i][0] != 0; i++) {

            picprintf ("\t" "{rank = same; ");

            for (int j = 1; j <= ranks[i][0]; j++) picprintf (" Nod_%d;", ranks[i][j]);

            picprintf ("}\n");
        }

        PrintConnections (data, picSource);

        picprintf ("}");

        fclose (picSource);

        char command[40] = "";
        sprintf (command, "dot -Tpng %s -o %s", srcName, picName);

        system (command);

        flogprintf ("<h2>Tree dump</h2><br>");
        flogprintf ("<img src = \"%s\"><br>", picName);

        GraphDumpCounter++;

        #undef picprintf
    }

    void PrintNod (Nod* nod, int* num, int depth, FILE* picSource, int ranks[MAX_RANKS][MAX_RANKS + 1]) {

        #define picprintf(...) fprintf (picSource, __VA_ARGS__);

        nod->num = *num;

        ranks[depth][0]++;
        ranks[depth][ranks[depth][0]] = *num;

        picprintf ("\t" "\"Nod_%d\" [shape = \"Mrecord\", style = \"filled\", fillcolor = \"#1ed5f2\", label = \"{ { | <prev> Prev = &lt;%p&gt; | } | Current = &lt;%p&gt; | ", nod->num, nod->prev, nod);
        nodDumpFunc (picSource, nod);

        picprintf (" | {next[%d] : ", nod->size);

        for (int i = 0; i < nod->size; i++) {

            picprintf (" | { [%d] | <next_%d> &lt;%p&gt; }", i, i, nod->next[i]);
        }

        picprintf (" | Cap = %d }}\"]" "\n", nod->cap);

        *num += 1;

        for (int i = 0; i < nod->size; i++) {
            if (nod->type == VAR and nod->next[i]->type == VAR) continue;
            if (nod->type == FUNC and nod->next[i]->type == FUNC) continue;
            PrintNod (nod->next[i], num, depth + 1, picSource, ranks);
        }

        #undef picprintf

    }

    void PrintConnections (Nod* nod, FILE* picSource) {

        #define picprintf(...) fprintf (picSource, __VA_ARGS__);

        for (int i = 0; i < nod->size; i++) {

            if (nod->type == VAR and nod->next[i]->type == VAR) continue;
            if (nod->type == FUNC and nod->next[i]->type == FUNC) continue;
            picprintf ("\t" "\"Nod_%d\":next_%d -> \"Nod_%d\":prev [color = \"#36f70f\"];\n", nod->num, i, (nod->next[i])->num);
            PrintConnections (nod->next[i], picSource);
        }

        #undef picprintf
    }

    void recDtorInside (Nod* iter) {

        size--;

        for (int i = 0; i < iter->size; i++) recDtorInside (iter->next[i]);

        iter->DTOR ();
    }

    void nodDumpFunc (FILE* outputFile, const Nod* nod) {

        #define picprintf(...) fprintf (outputFile, __VA_ARGS__)

        if      (strcmp (SyntaxStrings[nod->type], "<") == 0) picprintf ("Type = &lt;&lt;&gt; | Value = &lt;");
        else if (strcmp (SyntaxStrings[nod->type], ">") == 0) picprintf ("Type = &lt;&gt;&gt; | Value = &lt;");
        else if (strcmp (SyntaxStrings[nod->type], "<=") == 0) picprintf ("Type = &lt;&lt;=&gt; | Value = &lt;");
        else if (strcmp (SyntaxStrings[nod->type], ">=") == 0) picprintf ("Type = &lt;&gt;=&gt; | Value = &lt;");
        else picprintf ("Type = &lt;%s&gt; | Value = &lt;", SyntaxStrings[nod->type]);

        if (IS_INT (nod->type)) picprintf ("%d", nod->val);
        else if (IS_CHAR (nod->type)) picprintf ("%c", nod->val);
        else if (IS_DOUBLE (nod->type)) picprintf ("%lf", nod->val);
        else if (IS_STR (nod->type)) picprintf ("%s", nod->val);
        picprintf ("&gt;");

        #undef picprintf
    }

    public:

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
        flogprintf ("<hr>\n\n");
    }

    void dumpInside (const char* name = NULL, const char* fileName = NULL, const char* funcName = NULL, size_t line = 0, void (*dumpFunc) (Nod* obj) = NULL) {

        flogprintf ("<pre>" "In file %s, function %s, line %llu, Tree named \"%s\" was dumped :<br>",
                    fileName, funcName, line, name);

        flogprintf ("\t" "Errors : <br>");

        logPrintErrors ();

                                         flogprintf ( "\t" "hash     = %u (", hash);
        if      ( isPoison (&hash)     ) flogprintf ( "POISONED)<br>")
        else                             flogprintf ( "ok)<br>")

                                         flogprintf ( "\t" "cap      = %llu (", cap);
        if      ( isPoison (&cap)      ) flogprintf ( "POISONED)<br>")
        else                             flogprintf ( "ok)<br>")

                                         flogprintf ( "\t" "size     = %llu (", size);
        if      ( isPoison (&size)     ) flogprintf ( "POISONED)<br>")
        else                             flogprintf ( "ok)<br>")

                                         flogprintf ( "\t" "vacant   = 0x%p (", vacant);
        if      ( isPoison (&vacant)   ) flogprintf ( "POISONED)<br>")
        else                             flogprintf ( "ok)<br>")

                                         flogprintf ( "\t" "data     = 0x%p (", data);
        if      ( isPoison (&data)     ) flogprintf ( "POISONED)<br>")
        else                             flogprintf ( "ok)<br>")

                                         flogprintf ( "\t" "dataCanL = 0x%p (", dataCanL);
        if      ( isPoison (dataCanL)  ) flogprintf ( "POISONED)<br>")
        else                             flogprintf ( "ok)<br>")

                                         flogprintf ( "\t" "dataCanR = 0x%p (", dataCanR);
        if      ( isPoison (&dataCanR) ) flogprintf ( "POISONED)<br>")
        else                             flogprintf ( "ok)<br>")

                                         flogprintf ( "\t" "canL     = 0x%X (", canL);
        if      ( isPoison (&canL)     ) flogprintf ( "POISONED)<br>")
        else if ( canL      == CANL    ) flogprintf ( "ok)<br>")
        else                             flogprintf ( "NOT_OK)<br>")

                                         flogprintf ( "\t" "canR     = 0x%X (", canR);
        if      ( isPoison (&canR)     ) flogprintf ( "POISONED)<br>")
        else if ( canR      == CANR    ) flogprintf ( "ok)<br>")
        else                             flogprintf ( "NOT_OK)<br>")


        TreeGraphDump ();

        flogprintf ("</pre><hr>\n");
    }

    Tree (Nod* _data = NULL, size_t _size = 0) {

        canL      = CANL; ///< left cannary of struct
        hash      = 0;    ///< hash value
        errCode   = ok;   ///< error code
        canR      = CANR; ///< right cannary of struct

        if (_data != NULL and _size != 0) {

            cap = __max (Pow2After (_size), 4);
            size = _size;
        }
        else {

            cap = 4;
            size = 0;
        }

        data = (Nod*) calloc (cap * sizeof (Nod) + 2 * sizeof (unsigned int), 1);
        assert (data != NULL);

        dataCanL = (unsigned int*) data;
        *dataCanL = CANL;

        data = (Nod*) (dataCanL + 1);

        dataCanR = (unsigned int*) (data + cap);
        *dataCanR = CANR;

        for (int i = 0; i < size; i++) data[i].assign (_data + i);

        vacant = data + size;

        for (int i = size; i < cap - 1; i++) {

            data[i].DTOR ();
            data[i].prev = data + i + 1;
            if (i == cap - 1) data[i].prev = NULL;
        }

        countHash ();
    }

    Tree (char* fileName) {

        assert (fileName != NULL);

        fileName = bufferizeFile (fileName);
        char* buffer = fileName;

        assert (buffer != NULL);

        canL      = CANL; ///< left cannary of struct
        hash      = 0;    ///< hash value
        errCode   = ok;   ///< error code
        cap       = 4;
        size      = 0;
        canR      = CANR; ///< right cannary of struct

        data = (Nod*) calloc (cap * sizeof (Nod) + 2 * sizeof (unsigned int), 1);
        assert (data != NULL);

        dataCanL = (unsigned int*) data;
        *dataCanL = CANL;

        data = (Nod*) (dataCanL + 1);

        dataCanR = (unsigned int*) (data + cap);
        *dataCanR = CANR;

        vacant = data;

        for (int i = 0; i < cap - 1; i++) {

            data[i].DTOR ();
            data[i].prev = data + i + 1;
            if (i == cap - 1) data[i].prev = NULL;
        }

        NodReadRec (NULL, &buffer);

        errCode ^= WRONG_HASH;
        countHash ();
    }

    void NodReadRec (Nod* iter, char** buffer) {

        assert (buffer != NULL);
        assert (*buffer != NULL);

        int num = 0;
        int delta = 0;
        int _size = 0;

        sscanf (*buffer, " <%d", &num);

        if (iter != NULL and num < iter->num) {

            sscanf (*buffer, " <%d;0;0;0> {}%n", &num, &delta);
            assert (delta != 0);
            *buffer += delta;

            iter->push_back (data + num);
            return;
        }

        Nod* _next = add (Nod (), iter);

        sscanf (*buffer, " <%d;%d;%n", &_next->num, &_next->type, &delta);
        assert (delta != 0);
        *buffer += delta;

        if (**buffer == '\"') {

            sscanf (*buffer, "\"%*[^\"]%n\"", &delta);
            assert (delta != 0);

            _next->val.STR = (char*) calloc (delta, sizeof (char));
            assert (_next->val.STR != NULL);
            sscanf (*buffer, "\"%[^\"]\";%d> {%n", _next->val.STR, &_size, &delta);
        }
        else sscanf (*buffer, "%X;%d> {%n", (size_t*) &_next->val, &_size, &delta);

        assert (delta != NULL);
        *buffer += delta;


        for (int i = 0; i < _size; i++) {

            NodReadRec (_next, buffer);
        }

        sscanf (*buffer, " }%n", &delta);
        assert (delta != 0);
        *buffer += delta;
    }

    void DTOR () {

        recDtor (data);

        setPoison (&canL);
        setPoison (&hash);
        setPoison (&errCode);
        setPoison (&cap);
        setPoison (&size);
        setPoison (&vacant);
        setPoison (&data);
        if (dataCanL != NULL) setPoison (dataCanL);
        if (dataCanR != NULL) setPoison (dataCanR);
        setPoison (&dataCanR);
        setPoison (&canR);

        free (dataCanL);
        setPoison (&dataCanL);
    }

    Nod* add (Nod val, Nod* prev = NULL, size_t index = -1) {

        errCheck ();

        prev = resize (prev);

        assert (vacant != NULL);

        Nod* retVal = vacant;
        vacant = vacant->prev;

        retVal->assign (&val);

        if (prev != NULL) {

            prev->insert (index, retVal);
            retVal->prev = prev;
        }

        val.DTOR ();

        size++;

        countHash ();

        return retVal;
    }

    Nod* resize (Nod* invariant = NULL) {

        errCheck ();

        if (size > cap * 3 / 8 and size < cap or size < cap and cap == MIN_CAP) return invariant;

        if (cap > MIN_CAP and size <= cap * 3 / 8) cap /= 2;
        else if (size == cap) cap *= 2;


        data = (Nod*) calloc (cap * sizeof (Nod) + 2 * sizeof (unsigned int), 1);
        assert (data != NULL);

        Nod* iter = (Nod*) ((unsigned int*) data + 1);

        for (int i = 0; i < cap; i++) iter[i] = Nod();

        writeRaw (&iter, (Nod*) (dataCanL + 1));

        if (invariant != NULL) invariant = invariant->prev;

        fixPointers ((Nod*) (dataCanL + 1));

        for (Nod* i = (Nod*) (dataCanL + 1); i < (Nod*) dataCanR; i++)
            if (i->prev != NULL or i == (Nod*) (dataCanL + 1)) i->DTOR (); //fix of questionable quality

        free (dataCanL);

        dataCanL = (unsigned int*) data;
        *dataCanL = CANL;

        data = (Nod*) (dataCanL + 1);

        dataCanR = (unsigned int*) (data + cap);
        *dataCanR = CANR;

        data->prev = NULL;
        for (int i = size; i < cap - 1; i++) {

            data[i].DTOR ();
            data[i].prev = data + i + 1;
        }

        data[cap - 1].DTOR ();
        data[cap - 1].prev = NULL;

        vacant = data + size;

        countHash ();

        invariant = resize (invariant);

        return invariant;
    }

    void writeRaw (Nod** dst, Nod* src) {

        (*dst)->assign (src);
        src->prev = *dst;
        *dst += 1;

        for (int i = 0; i < src->size; i++) writeRaw (dst, src->next[i]);
    }

    void fixPointers (Nod* iter) {

        for (int i = 0; i < iter->size; i++) {

            iter->prev->next[i] = iter->next[i]->prev;
            fixPointers (iter->next[i]);
            iter->prev->next[i]->prev = iter->prev;
        }
    }

    Nod* getData () {

        return data;
    }

    size_t getSize () {

        return size;
    }

    size_t getCap () {

        return cap;
    }

    Nod* recDtor (Nod* iter, Nod* invariant = NULL) {

        errCheck ();

        for (int i = 0; i < iter->prev->size; i++)
            if (iter->prev->next[i] == iter) {
                iter->prev->erase (i);
                break;
            }

        recDtorInside (iter);

        invariant = resize (invariant);

        countHash ();

        return invariant;
    }

    unsigned int countHash () {

        hash = 0;

        countHashSeg (&canL, &canR);
        if (dataCanL != NULL) countHashSeg (dataCanL, dataCanR);

        return hash;
    }

    bool verifyHash () {

        unsigned int oldHash = hash;
        if (countHash () != oldHash) {

            errCode |= WRONG_HASH;
            return false;
        }
        return true;
    }
};

struct NameTable {

    Stack<Nod*> table;
    Stack<unsigned int> hashTable;
    Stack<int> cnt;

    NameTable () : table (), hashTable (), cnt () {

        cnt.push (0);
    }

    void addElem (Nod* ptr) {

        assert (ptr != NULL);

        table.push (ptr);
        hashTable.push (countHash (ptr->val.STR, ptr->val.STR + strlen (ptr->val.STR)));
        cnt.push (cnt.pop () + 1);
    }

    void newLayer () {

        cnt.push (0);
    }

    Nod* popElem () {

        int temp = cnt.pop ();
        temp--;
        cnt.push (temp);
        hashTable.pop ();
        return table.pop ();
    }

    void eraseLayer () {

        for (int i = cnt.pop (); i > 0; i--) {

            hashTable.pop ();
            table.pop ();
        }
    }

    Nod* findByName (char* varName) {

        unsigned int hash = countHash (varName, varName + strlen (varName));

        for (int i = 0; i < hashTable.getSize (); i++) {

            if (hashTable.getData ()[i] == hash) {

                return table.getData ()[i];
            }
        }

        return NULL;

    }

    void DTOR () {

        table.DTOR ();
        hashTable.DTOR ();
        cnt.DTOR ();
    }

    void dumpInside (const char* name = NULL, const char* fileName = NULL, const char* funcName = NULL, size_t line = 0, void (*dumpFunc) (Nod* obj) = NULL) {

        flogprintf ("<pre>" "In file %s, function %s, line %llu, NameTable named \"%s\" was dumped :<br>",
                    fileName, funcName, line, name);

        dump (table);
        dump (hashTable);
        dump (cnt);

        flogprintf("<hr>");
    }
};