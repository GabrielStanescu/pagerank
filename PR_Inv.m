function B = PR_Inv(A)
	% Functia care calculeaza inversa matricii A folosind factorizari Gram-Schmidt
	% Am folosit Gram-Schmidt pentru a scrie pe A in functie de Q * R
  % Am folosit apoi SST pentru a calcula inversa matricei A
  [m n]=size(A);
	Q = A;
	R = zeros( m, n );
	for k = 1 : n
    R( k, k ) = norm( Q( 1 : m, k ) );
	  Q( 1 : m, k ) = Q( 1 : m, k ) / R( k, k );
	  for j = k + 1 : n
		  R( k, j ) = Q( 1 : m, k )' * Q( 1 : m, j );
		  Q( 1 : m, j ) = Q(1 : m, j ) - Q( 1 : m, k ) * R( k, j );
	  endfor
	endfor
  Q = Q';
  B = A;
  %calcularea inversei lui A folosind SST
  for i = 1 : n
    B(:, i) = SST(R, Q(:, i));
  endfor
endfunction