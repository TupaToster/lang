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

    Get_13 (tree, iter, token, varTable, funcTable);
    while (Token->type == 12) {
        set (tree, {
            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })
        Token++;
        Get_13 (tree, Token - 1, token, varTable, funcTable);
    }
}
void Get_13 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);

    Get_14 (tree, iter, token, varTable, funcTable);
    while (Token->type == 13) {
        set (tree, {
            Nod* target = iter->pop_back ();
            iter->push_back (Token);
            Token->prev = iter;
            Token->push_back (target);
            target->prev = Token;
        })
        Token++;
        Get_14 (tree, Token - 1, token, varTable, funcTable);
    }
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

    if (Token->type == 17) {
        set (tree, {
            Token->prev = iter;
            iter->push_back (Token);
            Token++;
        })
    }
    else Get_18 (tree, iter, token, varTable, funcTable);
}
void Get_18 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);

    if (Token->type == 18) {
        set (tree, {
            Token->prev = iter;
            iter->push_back (Token);
            Token++;
        })
    }
    else Get_19 (tree, iter, token, varTable, funcTable);
}
void Get_19 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    // This is a buffer function that allows to write call_next in terminal functions in codeGenSrc
    Get_20 (tree, iter, token, varTable, varTable);
}
void Get_20 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);



    if (Token->type == LB) {

        Token++;
        while (Token->type != RB) Get_1 (tree, iter, token, varTable, funcTable);
        assert (Token->type == RB);
        Token++;
    }
    else Get_21(tree, iter, token, varTable, funcTable);
}
void Get_21 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);



    if (Token->type == IF) {

        Nod* ifPtr = Token;

        set (tree, {

            Token->prev = iter;
            iter->push_back (Token);
            Token++;
            assert (inSize);
        })

        assert (Token->type == LB);

        Get_1 (tree, ifPtr, token, varTable, funcTable);

        assert (Token->type == LFB);

        Token++;
        assert (inSize);

        varTable->newLayer ();
        funcTable->newLayer ();

        while (inSize and Token->type != RFB) Get_1 (tree, ifPtr, token, varTable, funcTable);
        assert (inSize);

        varTable->eraseLayer ();
        funcTable->eraseLayer ();

        assert (Token->type == RFB);

        Token++;
        assert (inSize);

        if (Token->type == ELSE) {

            Token++;
            assert (inSize);

            assert (Token->type == LFB);

            Token++;
            assert (inSize);

            varTable->newLayer ();
            funcTable->newLayer ();

            while (inSize and Token->type != RFB) Get_1 (tree, ifPtr, token, varTable, funcTable);
            assert (inSize);

            varTable->eraseLayer ();
            funcTable->eraseLayer ();

            assert (Token->type == RFB);
            
            Token++;
        }
    }
    else Get_22(tree, iter, token, varTable, funcTable);
}
void Get_22 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);



    // !!!!!! FUNC reader must always be infront of VAR reader
    if (IS_TYPE (Token->type)) {

        assert (inSize - 1);
        assert ((Token + 1)->type == BLANK);

        if (inSize - 2 and !(inSize - 3) or (Token + 2)->type != LB) {

            Get_23(tree, iter, token, varTable, funcTable);
            return;
        }

        Nod* funcPtr = Token + 1;

        if (varTable->findByName (funcPtr->val.STR) != NULL or funcTable->findByName (funcPtr->val.STR) != NULL) {

            printf ("Attempted redefinition of a function on ptr %p. For detailed information visit \"logs_out\".\n", funcPtr);
            dumpNodArray (tree->getData (), tree->getSize ());
            dump (*tree);
            dump (*varTable);
            dump (*funcTable);
            assert ("Stopping" == NULL);
        }

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

        int paramCounter = 0;
        assert (inSize);

        varTable->newLayer ();
        while (Token->type != RB) {

            Get_23(tree, funcPtr, token, varTable, funcTable);
            assert (inSize);
            paramCounter++;
            if (Token->type == RB) break;
            assert (Token->type == COMA);
            Token++;
        }

        set (tree, {

            funcPtr->next[0]->val = paramCounter;
        })

        Token++;
        assert (inSize);
        assert (Token->type == LFB);

        funcTable->addElem (funcPtr);
        funcTable->newLayer ();

        Token++;
        while (Token->type != RFB) Get_1 (tree, funcPtr, token, varTable, funcTable);

        varTable->eraseLayer ();

        funcTable->eraseLayer ();

        assert (inSize);
        assert (Token->type == RFB);
        Token++;
    }
    else Get_23(tree, iter, token, varTable, funcTable);
}
void Get_23 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    assert (tree != NULL);
    assert (iter != NULL);
    assert (token != NULL);
    assert (inSize);



    if (IS_TYPE (Token->type)){

        Token++;
        assert (inSize);
        assert (Token->type == BLANK);

        if (varTable->findByName (Token->val.STR) != NULL or funcTable->findByName (Token->val.STR) != NULL) {

            printf ("Attempted redefinition of a variable on ptr %p. For detailed information visit \"logs_out\".\n", Token);
            dumpNodArray (tree->getData (), tree->getSize ());
            dump (*tree);
            dump (*varTable);
            dump (*funcTable);
            assert ("Stopping" == NULL);
        }

        set (tree, {

            Token->type = VAR;
            Token->push_back (Token - 1);
            (Token - 1)->prev = Token;
            Token->prev = iter;
            iter->push_back (Token);
        })

        varTable->addElem (Token);

        Token++;

        if (inSize and Token->type == EQ) {

            Token++;
            assert (inSize);
            if (INT_MATCH ((Token - 3)->type, Token->type) or
                DOUBLE_MATCH ((Token - 3)->type, Token->type) or
                CHAR_MATCH ((Token - 3)->type, Token->type)) {

                    set (tree, {

                        (Token - 3)->val = Token->val;
                    })
                }
            else if (STR_MATCH ((Token - 3)->type, Token->type)){

                set (tree, {

                    (Token - 3)->val.STR = Token->val.STR;
                    assert ((Token - 3)->val.STR != NULL);
                })
            }
            else assert ("Error of kind: <type> <var_name> = <wrong_type>; or <type> <var_name> = ;\n\n" == NULL);

            Token++;
        }
    }
    else if (Token->type == BLANK) {

        Nod* definition = varTable->findByName (Token->val.STR);

        if (definition == NULL) Get_24(tree, iter, token, varTable, funcTable);
        set (tree, {

            iter->push_back (Token);
            Token->prev = iter;
            Token->type = VAR;
            Token->push_back (definition);
        })

        Token++;
    }
    else Get_24(tree, iter, token, varTable, funcTable);
}
void Get_24 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    // This is a buffer function that allows to write call_next in terminal functions in codeGenSrc
    Get_25 (tree, iter, token, varTable, varTable);
}
void Get_25 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    // This is a buffer function that allows to write call_next in terminal functions in codeGenSrc
    Get_26 (tree, iter, token, varTable, varTable);
}
void Get_26 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    // This is a buffer function that allows to write call_next in terminal functions in codeGenSrc
    Get_27 (tree, iter, token, varTable, varTable);
}
void Get_27 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    // This is a buffer function that allows to write call_next in terminal functions in codeGenSrc
    Get_28 (tree, iter, token, varTable, varTable);
}
void Get_28 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    // This is a buffer function that allows to write call_next in terminal functions in codeGenSrc
    Get_29 (tree, iter, token, varTable, varTable);
}
void Get_29 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    // This is a buffer function that allows to write call_next in terminal functions in codeGenSrc
    Get_30 (tree, iter, token, varTable, varTable);
}
void Get_30 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    // This is a buffer function that allows to write call_next in terminal functions in codeGenSrc
    Get_31 (tree, iter, token, varTable, varTable);
}
void Get_31 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    // This is a buffer function that allows to write call_next in terminal functions in codeGenSrc
    Get_32 (tree, iter, token, varTable, varTable);
}
void Get_32 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    // This is a buffer function that allows to write call_next in terminal functions in codeGenSrc
    Get_33 (tree, iter, token, varTable, varTable);
}
void Get_33 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    // This is a buffer function that allows to write call_next in terminal functions in codeGenSrc
    Get_34 (tree, iter, token, varTable, varTable);
}
void Get_34 (Tree* tree, Nod* iter, Nod** token, NameTable* varTable, NameTable* funcTable) {
    // This is a buffer function that allows to write call_next in terminal functions in codeGenSrc
    printf ("Wrong token on ptr: %p, stopping Get\n\n", Token);
    dumpNodArray (tree->getData (), tree->getSize ());
    dump (*tree);
    dump (*varTable);
    dump (*funcTable);
    assert ("Wrong token here!" == NULL);
}
