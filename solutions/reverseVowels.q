reverseVowels:{[x]
    d:where x in "AEIOU";
    p:where x in "aeiou";
    x[f]:reverse x f:asc d,p;
    q:@[x;d;upper];
    @[q;p;lower]
    }