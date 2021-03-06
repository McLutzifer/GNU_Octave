

## LOOPS

## IF
if (rem(x, 2) ==0)
  printf ("x is even\n");
else
  printf("x is odd\n");
endif

## WHILE
fib = ones (1, 10);
i = 3;
while (i <= 10)
  fib (i) = fib (i-1) + fib (i-2);
  i++;
endwhile

## DO UNTIL
do
  i++
  fib (i) = fib (i-1) + fib(i-2);
until (i==10)



## STRUCTURES

function y = f (x)
  y.re = real (x);
  y.im = imag (x);
endfunction

x.a = 1;
x.b = [1, 2; 3, 4];
x.c = "string";

