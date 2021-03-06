

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


## PLOTS

## 2D plot
x = -10:0.1:10;
plot (x, sin (x));
xlabel ("x");
ylabel ("sin (x)");
title ("Simple 2-D Plot");


##histogram
randn ("state", 1);
hist (randn (10000, 1), 30);
xlabel ("Value");
ylabel ("Count");
title ("Histogram of 10,000 normally distributed random numbers");

##eroorobar
rand ("state", 2);
x = 0:0.1:10;
y = sin (x);
lerr = 0.1 .* rand (size (x));
uerr = 0.1 .* rand (size (x));
errorbar (x, y, lerr, uerr);
axis ([0, 10, -1.1, 1.1]);
xlabel ("x");
ylabel ("sin (x)");
title ("Errorbar plot of sin (x)");

#polarplot
polar (0:0.1:10*pi, 0:0.1:10*pi);
title ("Example polar plot from 0 to 10*pi");

## 3D Plots
tx = ty = linspace (-8, 8, 41)';
[xx, yy] = meshgrid (tx, ty);
r = sqrt (xx .^ 2 + yy .^ 2) + eps;
tz = sin (r) ./ r;
mesh (tx, ty, tz);
xlabel ("tx");
ylabel ("ty");
zlabel ("tz");
title ("3-D Sombrero plot");





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

