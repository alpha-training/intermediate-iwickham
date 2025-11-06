\p 5071
\e 1

\d .u

T:`trade`quote
N:100
S:`JPM`GE`IBM
C:T!(`time`sym`price;`time`sym`bid`ask)
l:0Ni
w:(0#`)!()

initLog:{  
    L::`$":logs/tp",string .z.d;
    if[not type key L;L set()];
    if[h:hopen L;@[hclose;h;{x}]];
    l::hopen L;
    i::-1+count read0 L;
 }

/ fill in your code from previous exercises
upd:{[t;x] 
    if[type x;'"this must be a list of lists"];
    i+:1;
    a:flip C[t]!x;
    {[t;data] neg[w[t]]@\:(`upd;t;data)}[t;a];
    l enlist (`upd;t;x);
  }

/ fill in your code from previous exercises


sub:{[t] 
    $[11=type t;.z.s each t;w[t]:distinct w[t],.z.w];
    ("snapshot";(i,L))
    }

/ take from elsewhere
.z.pc:{[x] w::w except 'x}

/ saves us having to use a dummy feed
.z.ts:{
	t:rand T;
	n:1+rand N;
	a:(n#.z.p;n?S),$[t=`trade;1#n;2#n]?\:100f;
	upd[t;a];
 }

initLog[];
\t 1000


