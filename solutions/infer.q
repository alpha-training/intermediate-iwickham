infer:{
    if[type[x]in 0 98 99h;:.z.s each x];
    if[":"~first x;:`$x];
    $[x like"[0-9:`]*";get x;" "in x;.z.s each" "vs x;x]
    }