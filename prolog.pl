legusta(maria,cerveza).
legusta(maria,vino).
legusta(maria,rock).
legusta(maria,juan).
legusta(juan,vino).
legusta(juan,baila).
legusta(juan,rock).

% ?-legusta(maria,rock). 
% ?-legusta(maria,hiphop). 
%    &&  AND 
% ?-legusta(maria,vino),legusta(maria,cerveza).   Nos da como salida True


%  VARIABLES  
%   Una variable se va a instanciar con cualquier elemento de nuestra KB 
%  ?-legusta(maria,X),legusta(juan,X).
%  lo que hace es que asigna a X el 1er valor del elemento 2 en nuestra KB, en este caso X=Cerveza, luego X=Vino
%  Finalmente tendremos: 
%  X = vino  (para ver si existe otra coincidencia le damos en consola ";" y en versión online "next"
% X = rock   

% DOS VARIABLES
% legusta(maria,X),legusta(maria,Y). 
% Salida:   X = Y, Y = cerveza

% TRES VARIABLES
% legusta(maria,X),legusta(juan,A),legusta(maria,Z). 
% Salida:  
% 
% % legusta(maria,X),legusta(juan,A),legusta(maria,X). 
% Salida:  A = vino,   X = cerveza



eshombre(hombre).
eshombre(bart).
esmujer(lisa).
esmujer(maggie).
esmujer(marge).
esmujer(patty).
esmujer(selma).
eshijo(lisa,homero,marge).
eshijo(maggie,homero,marge).
eshijo(bart,homero,marge).
hermana(patty,marge).
hermana(selma,marge).
eshermana(X,Y):-esmujer(X),eshijo(X,homero,marge),eshijo(Y,homero,marge).
estia(K,X,Y,Z):-esmujer(K),hermana(K,marge),eshijo(X,homero,marge),eshijo(Y,homero,marge),eshijo(Z,homero,marge).


% ?-estia(selma,lisa,maggie,bart)
% ?-eshombre(bart)=X



%Estructuras
tieneun(maria,libro).
tieneun(maria,libro(las_batallas_desierto,jose_e_pacheco)).
tieneun(maria,libro(las_batallas_desierto,autor(jose_e_pacheco))).

%tieneun(maria,X)

