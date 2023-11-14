%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    Konstrukce baze Krylovova prostoru pro A symetrickou: 
%        Arnoldiho proces, Lanczosova tridiagonalizace
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

A = rand(100);
A = A + A';                              % generator symetricke matice
norm(A-A')                               % overeni symetrie 

x = rand(100,1);                         % startovni vektor

% Konstrukce b�ze K_10(A, x) Arnoldiho procesem

[V,H] = Arnoldimgs(A,x,10);              % OG dobre zachovana

% Jsou koeficienty v prav�m horn�m rohu H nulov�?
% Vytvo�te z H �tvercovou matici a ov��te jej� symetrii pomoc� normy
