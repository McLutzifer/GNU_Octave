fib = ones (1, 10);
i = 3;
while (i <= 10)
  fib (i) = fib (i-1) + fib (i-2);
  i++;
endwhile


if (rem(x, 2) ==0)
  printf ("x is even\n");
else
  printf("x is odd\n");
endif
