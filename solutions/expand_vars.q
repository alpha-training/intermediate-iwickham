expand:{[x]
    if[not "$"in x;: x]
    alph:.Q.an;
    u:where not x in alph;
    a2:a1 where (a1:u _ x) like "$*";
    a5:{$[x in key .conf;x;`MISSING]}each`$1_'a2;
    a6:string a5;
    a6[where a5 in a5 except`MISSING]:.conf a5 except`MISSING;
    a1[where"$"=first each a1]:a6;
    raze a1
    }