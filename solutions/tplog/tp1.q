
\p 5022
\l schema.q
\d .u

t:tables`.
N:100
S:`JPM`GE`IBM
/C:t!(`time`sym`price;`time`sym`bid`ask)
l:0Ni
w:t!()

/ delete subscription
/ x=table name, y=handle
del:{[x;y]
	w[x]:w[x] where not w[x][;0]=y;
 }

/ select from table (only give subscriber what they want)
/ x=table data, y=sym(s) or `
sel:{[x;y]
	$[`~first y;:x;select from x where sym in y];
 }
 
/ add subscription
/ x=table name, y=sym(s) or `
add:{[x;y]
    w[x]:w[x],enlist(.z.w;enlist y);
 }

/ fill in your code from previous exercises
upd:{[t;x]
    if[type x;'"this must be a list of lists"];
    c:key flip get t;
    pub[t;$[0>type first x;enlist;flip]c!x];
  }

/ fill in your code from previous exercises
pub:{[t;x]
    {[t;x;z]if[count x:sel[x]z 1;neg[first z](`upd;t;x)]}[t;x]each w t;}



sub:{[x;y]
    if[x~`;:sub[;y]each t];
    if[not x in t;'x];
    del[x;.z.w];
    add[x;y];
    }


/ take from elsewhere
pc:{del[;x]each t}
end:{neg[union/[w[;;0]]]@\:(`.u.end;x)}

/ saves us having to use a dummy feed
.z.ts:{
	f:rand t;
	n:1+rand N;
	a:(n#.z.p;n?S),$[f=`trade;1#n;2#n]?\:100f;
	upd[f;a];
 }

\t 1000

\d .
/.event.add[`.z.pc;`.u.pc];
