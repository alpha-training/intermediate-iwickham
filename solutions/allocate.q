allocate:{  
    u:x-sum p:floor x1:x*y%sum y;
    t:x1-p;
    ll:where max[t]=t;
    p[u#ll]+:1;
    p
    }
