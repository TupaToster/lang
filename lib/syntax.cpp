#include "syntax.h"

const unsigned int HashMult = 107u;

unsigned int countHash (void* from, void* to) {

    assert (from != NULL);
    assert (to != NULL);
    assert (from <= to);

    unsigned int hash = 0;

    for (; from < to; from = (char*) from + 1) {

        hash *= HashMult;
        hash += *(unsigned char*)from;
    }

    return hash;
}

unsigned int Syntax[] = {

    0u           , //  "_BLANK"
    11337u       , //  "if"
    124978241u   , //  "else"
    1179789u     , //  "for"
    2842188905u  , //  "while"
    122480446u   , //  "char"
    1214031u     , //  "int"
    4201789717u  , //  "double"
    487987757u   , //  "string"
    43u          , //  "+"
    45u          , //  "-"
    42u          , //  "*"
    47u          , //  "/"
    1150029u     , //  "d/d"
    1327980u     , //  "sin"
    1145443u     , //  "cos"
    1294284u     , //  "pow"
    59u          , //  ";"
    44u          , //  ","
    0u           , //  "_VAR"
    0u           , //  "_FUNC"
    40u          , //  "("
    41u          , //  ")"
    91u          , //  "["
    93u          , //  "]"
    123u         , //  "{"
    125u         , //  "}"
    60u          , //  "<"
    62u          , //  ">"
    6481u        , //  "<="
    6695u        , //  ">="
    61u          , //  "="
    6588u        , //  "=="
    145837248u   , //  "void"
    1678733528u  , //  "return"
    1122423u     , //  "and"
    11991u       , //  "or"
    0u           , //  "_NOD_TYPE_CNT"

};

const char* SyntaxStrings[] = {

    "_BLANK",
    "if",
    "else",
    "for",
    "while",
    "char",
    "int",
    "double",
    "string",
    "+",
    "-",
    "*",
    "/",
    "d/d",
    "sin",
    "cos",
    "pow",
    ";",
    ",",
    "_VAR",
    "_FUNC",
    "(",
    ")",
    "[",
    "]",
    "{",
    "}",
    "<",
    ">",
    "<=",
    ">=",
    "=",
    "==",
    "void",
    "return",
    "and",
    "or",
    "_NOD_TYPE_CNT"
};