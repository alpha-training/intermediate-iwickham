upd:upsert
\e 1
h:hopen 5051

sub:{[t] 
    a:h(`.u.sub;t);
    -11!a[1;1];
    }