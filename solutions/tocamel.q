f:{[x]
    p:"_" vs x;
    l:first p;
    u:1_p;
    l,raze {@[x;0;upper]} each u;
    }
toCamel:{[x]
    f:where prev x="_";
    z:@[x;f;upper];dbg
    @[z;f-1;except]
    }