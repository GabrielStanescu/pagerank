function [R1 R2] = PageRank(nume, d, eps)
	% Calculeaza indicii PageRank pentru cele 3 cerinte
	% Scrie fisierul de iesire nume.out 
  
  input = fopen(nume, 'r');
  N = fscanf(input, '%f', 1);
  
  outname = [nume ".out"];
  output = fopen(outname, 'w');
  
  fprintf(output, "%d\n\n", N);
  
  %apelarea functiei Iterative pentru determinarea R1
  R1 = Iterative(nume, d, eps);
  for i = 1 : N
    fprintf(output, "%f\n", R1(i));
  endfor
  
  fprintf(output, "\n");
  
  %apelarea functiei Algebraic pentru determinarea R2
  R2 = Algebraic(nume, d, eps);
  for i = 1 : N
    fprintf(output, "%f\n", R2(i));
  endfor
  
  %calcularea PR1 folosind functia predefinita 'sort'
  PR1 = sort(R2, 'descend'); 
  
  aux = dlmread(input, ' ', N + 1, 0);
  val1 = aux(1);
  val2 = aux(2);
  
  for i = 1 : N
    fprintf(output, "\n%d %d %f", i, find(PR1(i) == R2), Apartenenta(PR1(i), val1, val2));
  endfor
  fclose(output);
endfunction