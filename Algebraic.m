function R = Algebraic(nume, d)
  input = fopen(nume, 'r');
  N = fscanf(input, '%f', 1);
  %citire matrice(lista de adiacenta) incepand cu a doua linie din fisierul input
  matrix = dlmread(input, ' ', 1, 0);
  %eliminarea primei si a doua coloane
  matrix(:, 1 : 2) = [];
  A = zeros(N, N);
  [i j] = find(matrix);
  %crearea matricei de adiacenta
  for k = 1 : size(i)
    A(i(k), matrix(i(k), j(k))) = 1;
  endfor
  A = A - diag(diag(A));
  K = zeros(N, N);
  %crearea matricei K
  for i = 1 : N
    K(i, i) = 1 / sum(A(i, :));
  endfor
  M = (K * A)';
  %am folosit o variabila deoarece valoarea este constanta
  aux = ((1 - d) / N) * ones(N, 1);
  
  inversa = eye(N) - d * M;
  inversa = PR_Inv(inversa);
  
  R = inversa * aux;

  fclose(input);
endfunction
	