#include "k.h"

K ctil(K x) {
    if (x->t != -KJ)
        return krr("type");
    J n = x->j;
    if (n < 0)
        return krr("neg");
    K r = ktn(KJ, n);
    for (J i = 0; i < n; i++)
        kJ(r)[i] = i;
    return r;
    }