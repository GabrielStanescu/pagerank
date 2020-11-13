function x = SST(A, b)
  n = length(b);
  x = zeros(n, 1);
  for i = n : -1 : 1
    suma = 0;
    for j = (i + 1) : n
      suma += A(i, j) * x(j);
    endfor
    x(i) = (b(i) - suma) / A(i, i);
  endfor
endfunction
