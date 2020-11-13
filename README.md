# pagerank
A project which implements the PageRank algorithm using two methods

Iterative
-am citit din fisierul input folosind functia predefinita 'dlmread' care
formeaza o matrice cu toate valorile din fisier, "spatiile" libere fiind 
inlocuite de '0'
-am modificat matricea astfel incat sa am in final doar lista de adiacenta care
contine doar nodurile catre vecini (fara N, fara numarul de vecini, fara val1, val2)
-am eliminat de pe diagonala matricei A valorile de 1 asa cum se specifica si
in cerinta (A - diag(diag(A)))
-aux este constanta din formula de calculare a R-ului (1-d)/N * vector coloana
-am calculat R pana cand era indeplinit 'eps'

Algebraic
-prima parte a codului a fost implementata din programul 'Iterative'
-am folosit PR_Inv care calcula inversa matricei 'inversa' folosind Gram Schimdt
modificat (codul a fost implementat din materialul de pe moodle)
-pentru calcularea R-ului am folosit formula de pe wikipedia

PR_Inv
-Gram_Schimdt modificat
-am folosit SST pentru a calcula inversa lui A

Apartenenta
-am folosit functia cu 3 ramuri din pdf-ul temei, calculand la final valorile
a si b folosind un sistem de 2 ecuatii cu 2 necunoscute.
-y = a*x + b daca x este cuprins intre val1 si val2

PageRank
-am apelat 'Iterative' si 'Algebraic' pentru a calcula R1 si R2 dupa care le-am
scris in fisierul de output

Daca ultimele valori printate (importanta paginilor) sunt egale, indexurile 
s-ar putea putea sa nu fie identice cu cele din checker. Am folosit functia
de sortare, dar nu pot sa "controlez" felul in care sunt indexate valorile
egale.
