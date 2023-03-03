#include "back.h"

int main (int argc, char* argv[]) {

    if (argc != 3) {

        printf ("Right usage: ./back.exe <inputFileName> <outputFileName>\n");
        exit (__LINE__);
    }

    Set_G (argv[1], argv[2]);
}