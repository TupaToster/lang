//!!!!!!!!!! This file is generated automatically. To change it's contents, please change source file for auto generation. !!!!!!!
void Get_1 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);



    if (Token->type == SC) {

        Token++;
        return;
    }
    else Get_2(tree, iter, token, varTable, funcTable);
}
void Get_2 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);

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
    assert (inSize);

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
    assert (inSize);

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
    assert (inSize);

    Get_6 (tree, iter, token, varTable, funcTable);
    while (Token->type == 5) {
        set (tree, {
            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })
        Token++;
        Get_6 (tree, Token - 1, token, varTable, funcTable);
    }
}
void Get_6 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);

    Get_7 (tree, iter, token, varTable, funcTable);
    while (Token->type == 6) {
        set (tree, {
            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })
        Token++;
        Get_7 (tree, Token - 1, token, varTable, funcTable);
    }
}
void Get_7 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);

    Get_8 (tree, iter, token, varTable, funcTable);
    while (Token->type == 7) {
        set (tree, {
            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })
        Token++;
        Get_8 (tree, Token - 1, token, varTable, funcTable);
    }
}
void Get_8 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);

    Get_9 (tree, iter, token, varTable, funcTable);
    while (Token->type == 8) {
        set (tree, {
            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })
        Token++;
        Get_9 (tree, Token - 1, token, varTable, funcTable);
    }
}
void Get_9 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);

    Get_10 (tree, iter, token, varTable, funcTable);
    while (Token->type == 9) {
        set (tree, {
            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })
        Token++;
        Get_10 (tree, Token - 1, token, varTable, funcTable);
    }
}
void Get_10 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);

    Get_11 (tree, iter, token, varTable, funcTable);
    while (Token->type == 10) {
        set (tree, {
            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })
        Token++;
        Get_11 (tree, Token - 1, token, varTable, funcTable);
    }
}
void Get_11 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);

    Get_12 (tree, iter, token, varTable, funcTable);
    while (Token->type == 11) {
        set (tree, {
            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })
        Token++;
        Get_12 (tree, Token - 1, token, varTable, funcTable);
    }
}
void Get_12 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);



    if (Token->type == LB) {

        set (tree, {
            Token++;
            Get_1 (tree, iter, token, varTable, funcTable);
            assert (Token->type == RB);
            Token++;
        })
    }
    else Get_13(tree, iter, token, varTable, funcTable);
}
void Get_13 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);

    if (Token->type == 13) {
        set (tree, {
            Token->prev = iter;
            iter->push_back (Token);
            Token++;
        })
    }
    else Get_14 (tree, iter, token, varTable, funcTable);
}
void Get_14 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);

    if (Token->type == 14) {
        set (tree, {
            Token->prev = iter;
            iter->push_back (Token);
            Token++;
        })
    }
    else Get_15 (tree, iter, token, varTable, funcTable);
}
void Get_15 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);

    if (Token->type == 15) {
        set (tree, {
            Token->prev = iter;
            iter->push_back (Token);
            Token++;
        })
    }
    else Get_16 (tree, iter, token, varTable, funcTable);
}
void Get_16 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);

    if (Token->type == 16) {
        set (tree, {
            Token->prev = iter;
            iter->push_back (Token);
            Token++;
        })
    }
    else Get_17 (tree, iter, token, varTable, funcTable);
}
void Get_17 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);



        if (IS_TYPE (Token->type)) {

            assert (inSize - 1);
            assert ((Token + 1)->type == BLANK);

            if (Token - tree->getData () == tree->getSize () - 2 or (Token + 2)->type != LB) {

                // Get_18(tree, iter, token, varTable, funcTable);
                return;
            }

            Nod* funcPtr = Token + 1;

            set (tree, {

                (Token + 1)->type = FUNC;
                (Token + 1)->push_back (Token);
                Token->prev = Token + 1;
                iter->push_back (Token + 1);
                (Token + 1)->prev = iter;
            })

            Token += 2;

            assert (Token->type == LB);

            Token++;

            assert (inSize);
            while (Token->type != RB) {

                // Get_18(tree, iter, token, varTable, funcTable);
                assert (inSize);
                assert (Token->type == COMA);
                Token++;
            }

            Token++;
            assert (inSize);
            assert (Token->type == LFB);

            Token++;
            while (Token->type != RFB) Get_1 (tree, funcPtr, token, varTable, funcTable);

            assert (inSize);
            assert (Token->type == RFB);
            Token++;
        }
        // else Get_18(tree, iter, token, varTable, funcTable);
}
