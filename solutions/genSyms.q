genSyms:{
    `$/:((x-1) {x;raze {[x;y] y,'x}[x] each .Q.A}/(.Q.A))
    }

<<<<<<< HEAD
/
Decent effort

Kieran's solution
genSyms:{$[x=1;`$'.Q.A;`$(cross/)x#enlist .Q.A]}
=======


genSyms2:{
    letters:.Q.A;
    nums:(til 26) xexp x;            / 0 .. 26^x - 1
    digits:(26 vs nums) mod 26;    / base-26 digit expansion
    `$letters[digits]              / map digits → letters
    }
>>>>>>> e9d4591 (test)
