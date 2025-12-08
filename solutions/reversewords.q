
reverseWords:{
    alph:.Q.a,.Q.A,"'";
    x1:(where differ q:x in alph)_x;
    words:where{any x}each x1 in alph;
    x1[words]:reverse x1 words;
    raze x1
    }