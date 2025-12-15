reverseVowels:{[x]
    d:where x in"AEIOU";
    p:where x in"aeiou";
    x[f]:reverse x f:asc d,p;
    x[d]:upper x[d];
    x[p]:lower x[p];
    x
    }


@[x;f;{$[x~lower x;x:upper x;x:lower x]}]

reverseVowels:{[x]
    d:where x in"AEIOU";
    p:where x in"aeiou";
    x[f]:reverse x f:asc d,p;
    @[x;f;{$[x~lower x;x:upper x;x:lower x]}]
    }



(count[f]+1) rotate i