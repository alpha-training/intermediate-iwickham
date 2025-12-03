longestRun:{[x]
    start:where 1=z:1_deltas (1=deltas x),0b; / index of start of each run and deals with runs ending on last index 
    end:where -1=z; / index of end of each run
    if[(count start)<>count end;start:0,start]; / deals with run  starting index 0
    x (first first qq) + til(1+first last qq:deltas (start;end)[;where p=max p:end-start]) / finds max run and indexs in
    }

longestRun3:{
    a1:([]v:x;1=0N-':x);
    a2:update idx:til count a1,(tt:1_deltas x,0b) from a1;
    a4::update dts:deltas idx from select from a2 where tt in 1 -1;
    t:value flip select dts,v from (select from a4 where tt=-1) where dts=max dts;
    (t[1;0]-t[0;0])+til(1+t[0;0])
    }

/
longestRun3:{[x]
    r:deltas x; / differences 1s where we have a run
    r[where  r<>1]:0; / all else to 0s
    start:where 1=z:1_deltas r,0; / index of start of each run and deal with runs ending on last index
    end:where -1=z; / index of end of each run
    if[(count start)<>count end;start:0,start]; / deals with run  starting index 0
    x (first first qq) + til(1+first last qq:deltas (start;end)[;where p=max p:end-start]) / finds max run and indexs in
    }