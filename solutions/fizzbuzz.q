fizzBuzz:{[n]
    x:1+til n;
    L:(`0;`fizz;`buzz;`fizzbuzz)(sum @[0=x mod/:3 5;1;2*]);
    g:where L= `0;
    x!@[L;g;:;`$/:string 1+g]
    }