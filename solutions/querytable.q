queryTable:{[t;c]   
    if[s:(`date in cols t) and not k:(`date in c 0);
        : "A date constraint must be present"
        ];
    if[k and not s;
        : ?[t;1_c;0b;()]
        ];
    ?[t;c;0b;()]
    }