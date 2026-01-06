allocate:{  
    p:floor x1:x*y%sum y;
    t:x1-p;
    p[max t?t]+:x-sum p;
    p
    }

