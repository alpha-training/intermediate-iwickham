L:`:data/tp2025.03.01
loginfo:1!flip(`key`chunks`rows!"sjj"$\:())
CHUNKS_Q:0
CHUNKS_T:0
ROWS_Q:0
ROWS_T:0
upd:{
    if[x=`quote;CHUNKS_Q+:1;ROWS_Q+:count first y];
    if[x=`trade;CHUNKS_T+:1;ROWS_T+:count first y];
    }
-11!L;
`loginfo upsert ((`trade;CHUNKS_T;ROWS_T);(`quote;CHUNKS_Q;ROWS_Q));