tostr:{$[0=count x;"";0=t:type x;.z.s each x;t in -10 10h;x;string x]}
tonote:{1_raze(" ",'tostr[x],'"="),'tostr y}

fromnote:{  
    t:"="vs'each" "vs x;        
    (`$t[;0])!t[;1]     / or consider (!).@[flip t;0;"S"$]
    }