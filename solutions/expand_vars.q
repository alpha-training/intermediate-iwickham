expand:{[x]
    if[not "$"in x;: x]
    alph:.Q.A,.Q.a;
    u:where not x in alph;
    a1:u cut x;
    a2:a1 where"$"=first each a1;
    a3:_[1;]each a2;
    a4:`$a3;
    a5:{$[x in key .conf;x;`MISSING]}each a4;
    ix1:where a5 in a5 except`MISSING;
    a6:string a5;
    a6[ix1]:.conf a5 except`MISSING;
    ix2:where"$"=first each a1;
    a1[ix2]:a6;
    raze a1
    }