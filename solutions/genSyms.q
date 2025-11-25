genSyms:{
    `$/:((x-1) {x;raze {[x;y] y,'x}[x] each .Q.A}/(.Q.A))
    }

/
Decent effort

Kieran's solution
genSyms:{$[x=1;`$'.Q.A;`$(cross/)x#enlist .Q.A]}
