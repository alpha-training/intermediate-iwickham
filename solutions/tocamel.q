toCamel:{[x]
    p:"_" vs x;
    l:first p;
    u:1_p;
    l,raze {@[x;0;upper]} each u;
    }

