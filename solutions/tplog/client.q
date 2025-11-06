upd:upsert
\e 1
h:hopen 5011

sub:{[t] 
    a:h(`.u.sub;t);
    -11!a[1;1];
    }