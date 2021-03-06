

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



##  DIFFERENTIAL EQUATIONS

## oregonator differential equation
function xdot = f (x, t)

  xdot = zeros (3,1);

  xdot(1) = 77.27 * (x(2) - x(1)*x(2) + x(1) ...
            - 8.375e-06*x(1)^2);
  xdot(2) = (x(3) - x(1)*x(2) - x(2)) / 77.27;
  xdot(3) = 0.161*(x(1) - x(3));

endfunction

