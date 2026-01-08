joinBest:{[s;win;b]
    t:getTrades s;
    q:getQuotes s;
    $[b;wj[win+\:t`time;`sym`time;t;(q;(max;`bid);(max;`ask))];
        wj1[win+\:t`time;`sym`time;t;(q;(max;`bid);(max;`ask))]]
    }

joinAll:{[s;win;b]
    t:getTrades s;
    q:getQuotes s;
    $[b;wj[win+\:t`time;`sym`time;t;(q;(::;`bid);(::;`ask))];
        wj1[win+\:t`time;`sym`time;t;(q;(::;`bid);(::;`ask))]]
 }