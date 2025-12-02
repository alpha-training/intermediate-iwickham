longestRun:{[x]
    r:deltas x; / differences 1s where we have a run
    r[where  r<>1]:0; / all else to 0s
    k:r,0; /deals with runs ending on last indx
    start:where 1=z:1_deltas k; / index of start of each run
    end:where -1=z; / index of end of each run
    if[(count start)<>count end;start:0,start]; / deals with run  starting index 0
    x (first first qq) + til(1+first last qq:deltas (start;end)[;where p=max p:end-start]) / finds max run and indexs in
    }
