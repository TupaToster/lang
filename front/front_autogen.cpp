//!!!!!!!!!! This file is generated automatically. To change it's contents, please change source file for auto generation. !!!!!!!
void Get_1 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    Get_2 (tree, iter, token, varTable, funcTable);
    while (Token->type == 1) {
        set (tree, {
            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })
        Token++;
        Get_2 (tree, Token - 1, token, varTable, funcTable);
    }
}
void Get_2 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    Get_3 (tree, iter, token, varTable, funcTable);
    while (Token->type == 2) {
        set (tree, {
            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })
        Token++;
        Get_3 (tree, Token - 1, token, varTable, funcTable);
    }
}
void Get_3 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    Get_4 (tree, iter, token, varTable, funcTable);
    while (Token->type == 3) {
        set (tree, {
            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })
        Token++;
        Get_4 (tree, Token - 1, token, varTable, funcTable);
    }
}
void Get_4 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    Get_5 (tree, iter, token, varTable, funcTable);
    while (Token->type == 4) {
        set (tree, {
            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })
        Token++;
        Get_5 (tree, Token - 1, token, varTable, funcTable);
    }
}
void Get_5 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);

    if (Token->type == LB) {

        Token++;
        Get_1 (tree, iter, token, varTable, funcTable);
        assert (Token->type == RB);
        Token++;
    }
    else Get_6(tree, iter, token, varTable, funcTable);
}
void Get_6 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);

    if (Token->type == INT_CONST) {

        Token->prev = iter;
        iter->push_back (Token);
        Token++;
    }
    else Get_7(tree, iter, token, varTable, funcTable);
}
void Get_7 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);

    if (Token->type = DOUBLE_CONST) {

        Token->prev = iter;
        iter->push_back (Token);
        Token++;
    }
    else Get_8(tree, iter, token, varTable, funcTable);
}
void Get_8 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);

    if (Token->type == CHAR_CONST) {

        Token->prev = iter;
        iter->push_back (Token);
        Token++;
    }
    else Get_9(tree, iter, token, varTable, funcTable);
}
void Get_9 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);

    assert (Token->type == STR_CONST);

    Token->prev = iter;
    iter->push_back (Token);
    Token++;
}
