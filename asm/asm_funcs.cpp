#include "asm_head.h"

char* handleComLine (int argc, char* argv[], char** outFileName) {

    assert (argv != NULL);
    assert (outFileName != NULL);

    char* fileName = NULL;

    switch (argc) {

        case 1:

            printf ("Usage hint: ./asm.exe fileName [-o outFileName]\n"
                    "fileName - name of file to compile (commonly .codeFile)\n"
                    "-o - optional key to set name of output .wtf file\n"
                    "outFileName - name of output file with -o (set to a.wtf by default)\n");
            return NULL;
        break;

        case 2:

            fileName = strdup (argv[1]);
            assert (fileName != NULL);
        break;

        case 4:

            fileName = strdup (argv[1]);
            assert (fileName != NULL);


            if (strcmp (argv[2], "-o")) {

                printf ("Wrong args");
                return NULL;
            }

            *outFileName = strdup (argv[3]);
            assert (*outFileName != NULL);
        break;

        default:

            printf ("Wrong command line args");
            return NULL;
        break;
    }

    if (*outFileName == NULL) *outFileName = strdup ("a.wtf");
    assert (*outFileName != NULL);

    return fileName;
}

void writeCode (Text* codeFile, char* outStr, Stack<Tag>* tags, size_t* Ip) {

    assert (codeFile != NULL);
    assert (tags != NULL);
    assert (Ip != NULL);

    if (outStr != NULL) strcpy (outStr + *Ip, signa);

    *Ip += strlen (signa);

    for (int i = 0; i < codeFile->lineCnt; i++) {

        char* lBegin = codeFile->lines[i].begin;
        char* lEnd = codeFile->lines[i].end;
        char wrd[CONST_STR_LEN] = "";
        int delta = 0;

        if (lBegin[0] == '#') continue;

        while (lBegin < lEnd and sscanf (lBegin, " %[^: \n]: %n", wrd, &delta) == 1) {


            if (delta == 0) break;
            addTag (tags, wrd, Ip);
            lBegin += delta;
            delta = 0;
        }

        if (lBegin >= lEnd) continue;

        #define GENERAL_CMD

        #define DEF_CMD(name, num, arg, code)\
            if (strncmp (lBegin, #name, strlen (#name)) == 0) {\
\
                if (arg == 0) {\
\
                    if (outStr != NULL) outStr[*Ip] = num;\
                    ++*Ip;\
                }\
                else {\
\
                    handleArg (codeFile, i, outStr, num, tags, Ip);\
                }\
            }\
            else

        #include "../lib/cmd.h"
        if (true) {

            printf ("Wrong command at line %d : <%.*s>" "\n", i+1, lEnd > lBegin ? lEnd - lBegin : 0, lBegin);
            Errors++;
        }

        #undef DEF_CMD
    }
}

void handleArg (const Text* code, const int line, char* outStr, unsigned char cmdNum, Stack<Tag>* tags, size_t* Ip) {

    assert (code != NULL);
    assert (tags != NULL);
    assert (Ip != NULL);

    char arg1[CONST_STR_LEN] = "";
    char arg2[CONST_STR_LEN] = "";

    int it1 = 0;

    size_t commandIp = *Ip;
    *Ip += 1;

    elem_t value = 0;

    if (sscanf (code->lines[line].begin, "%s %[^+\n\r ] + %[^]\n\r ]", arg1, arg1, arg2) < 2) {

        printf ("Wrong arguments in line %d : %s" "\n", line + 1, code->lines[line].begin);
        Errors++;
        return;
    }

    if (arg1[it1] == ':') {

        printTag (tags, arg1 + it1 + 1, outStr, Ip, commandIp, cmdNum);
        return;
    }

    if (arg1[it1] == '[') {

        cmdNum |= MASK_RAM;
        it1++;
    }

    if (arg1[it1] == 'r' and arg1[it1 + 2] == 'x')
        printReg (Ip, commandIp, outStr, &cmdNum, arg1 + it1);
    else if (sscanf (arg1 + it1, getFormat (elem_t), &value) == 1)
        printImm (Ip, commandIp, outStr, &cmdNum, value);

    if (arg2[0] == 'r' and arg2[2] == 'x') {

        if (cmdNum & MASK_REG) {

            printf ("Wrong arguments in line %d : %s" "\n", line + 1, code->lines[line].begin);
            Errors++;
            return;
        }

        printReg (Ip, commandIp, outStr, &cmdNum, arg2 + 1);
    }
    else if (sscanf (arg2, getFormat (elem_t), &value) == 1) {

        if (cmdNum & MASK_IMM) {

            printf ("Wrong arguments in line %d : %s" "\n", line + 1, code->lines[line].begin);
            Errors++;
            return;
        }

        printImm (Ip, commandIp, outStr, &cmdNum, value);
    }

}

void printReg (size_t* Ip, const size_t commandIp, char* outStr, unsigned char* cmdNum, const char* arg) {

    *cmdNum |= MASK_REG;

    if (outStr != NULL) {

        outStr[commandIp] = *cmdNum;
        outStr[*Ip] = arg[1] - 'a' + 1;
    }

    *Ip += 1;
}

void printImm (size_t *Ip, const size_t commandIp, char* outStr, unsigned char* cmdNum, const elem_t value){

    *cmdNum |= MASK_IMM;

    if (outStr != NULL) {

        outStr[commandIp] = *cmdNum;
        *(elem_t*) (outStr + *Ip) = value;
    }

    *Ip += sizeof (elem_t);
}

void printTag (Stack<Tag>* tags, char* name, char* outStr, size_t* Ip, size_t commandIp, char cmdNum) {

    if (outStr != NULL) outStr[commandIp] = cmdNum;

    for (int i = 0; i < tags->getSize (); i++) {

        if (strcmp (tags->getData ()[i].name, name) == 0) {

            if (outStr != NULL) *(elem_t*)(outStr + *Ip) = (elem_t) tags->getData ()[i].ip;
            *Ip += sizeof (elem_t);
            return;
        }
    }

    if (outStr != NULL) *(unsigned long long*)(outStr + *Ip) = -1;
    *Ip += sizeof (elem_t);
}

void addTag (Stack<Tag>* tags, const char* name, size_t* Ip) {

    for (int i = 0; i < tags->getSize (); i++)
        if (tags->getData ()[i].ip == (elem_t) *Ip)
            return;

    tags->push (Tag (name, (elem_t)*Ip));
    // tags->getData ()[tags->getSize () - 1].name[strlen (tags->getData ()[tags->getSize () - 1].name) - 1] = '\0';
}
