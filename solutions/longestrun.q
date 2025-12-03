longestRun:{[x]
    r:deltas x; / differences 1s where we have a run
    r[where  r<>1]:0; / all else to 0s
    start:where 1=z:1_deltas r,0; / index of start of each run and deal with runs ending on last index
    end:where -1=z; / index of end of each run
    if[(count start)<>count end;start:0,start]; / deals with run  starting index 0
    x (first first qq) + til(1+first last qq:deltas (start;end)[;where p=max p:end-start]) / finds max run and indexs in
    }


