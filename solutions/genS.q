
genS:{[n] raze {`$/:((x-1) {x;raze {[x;y] y,'x}[x] each .Q.A}/(.Q.A))} each 1+til n}

genSopt:{[n] 
    genSym:{$[x=1;`$'.Q.A;`$(cross\)x#enlist .Q.A]};
    $[n~1;genSym n;raze @[genSym n;0;:;`$/:.Q.A]]
        }