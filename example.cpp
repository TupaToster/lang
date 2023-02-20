int comp (int a, int b) {

    if (a == b) {

        return 1;
    }
    else {

        return 0;
    }
}

for (int i = 17; i < 19; i = i + 1) {

    if (comp (i, 18) == 1) {

        return 19;
    }
}
else {

    return 18;
}