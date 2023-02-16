//!!!!!!!!!! This file is generated automatically. To change it's contents, please change source file for auto generation. !!!!!!!
void Get_1 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    Get_2 (tree, iter, token);
    while (Token->type == 1) {
        set (tree, {
            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })
        Token++;
        Get_2 (tree, Token - 1, token);
    }
}
void Get_2 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    Get_2 (tree, iter, token);
    while (Token->type == 2) {
        set (tree, {
            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })
        Token++;
        Get_3 (tree, Token - 1, token);
    }
}
void Get_3 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    Get_2 (tree, iter, token);
    while (Token->type == 3) {
        set (tree, {
            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })
        Token++;
        Get_4 (tree, Token - 1, token);
    }
}
void Get_4 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    Get_2 (tree, iter, token);
    while (Token->type == 4) {
        set (tree, {
            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })
        Token++;
        Get_5 (tree, Token - 1, token);
    }
}
void Get_6 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);

    if (Token->type == LB) {

        Token++;
        Get_1 (Tree, iter, token);
        assert (Token->type == RB);
        Token++;
    }
    else Get_7(tree, iter, token);
}