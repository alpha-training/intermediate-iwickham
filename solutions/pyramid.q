Pyr:{[P]
    Max_i::-1+count P; /initialise variables
    newrow::P[Max_i];

    while[Max_i>0;
        newrow::{P[Max_i-1;x]+max(newrow[x];newrow[x+1])}each til Max_i; 
        Max_i-:1;
        ];
    first newrow
    }

rowswitch:{[x;y]
    L::x;
    L1::y;
    newrow:{L1[x]+max(L[x];L[x+1])}each til count L1
    }
Pyr2:{[P]
    first (rowswitch/)reverse P
    }