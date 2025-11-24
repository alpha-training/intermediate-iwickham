fizzBuzz:{[n]
    x:1+til n;
    L:(`0;`fizz;`buzz;`fizzbuzz)(sum @[0=x mod/:3 5;1;2*]);
    x!@[L;where L=`0;:;`$/:string 1+where L=`0]
    }


