queryTable:{[t;c]   
    if[(`date in cols t) and not `date in c 0;
        : "A date constraint must be present"
        ];
    if[(not `date in cols t) and `date in c 0;
        : ?[t;1_c;0b;()]
        ];
    ?[t;c;0b;()]
    }


