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

%Elementos de coomparación
?-maneja(juan,coche)=maneja(juan,x)
?-maneja(juan,Y)=maneja(juan,X)
?-a(B,c,d(e,F,g(h,i,J)))=a(b,C,d(E,f,g(H,i,j))).
%Salida:
B = b,
C = c,
E = e,
F = f,
H = h,
J = j



gob(salinas,1988,1994).
gob(zedillo,1994,2000).
gob(fox,2000,2006).
gob(calderon,2006,2012).
gob(pena,2016,2018).
presidente(X,T):-gob(X,A,B),T>=A,T=<B.

%?-presidente(salinas,1989)
%%?-presidente(fox,2000)
%?-presidente(Alguien,2000)
%?-presidente(Alguien,Tiempo)


poblacion(china,1300).
poblacion(eeuu,350).
poblacion(mexico,135).
poblacion(brasil,200).
area(china,9).
area(brasil,8).
area(mexico,2).
area(eeuu,9).
densidad(X,D):-poblacion(X,P),area(X,A),D is P/A.


%?-densidad(mexico,X)
%?-densidad(P,X)

%Ejercicio: Calcular el impuesto de un producto 




% DICCIONARIO
cambio(you,tu).
cambio(are,eres).
cambio(a,una).
cambio(computer,computadora).
cambio(X,X). %cuando no hay nada en la base de conocimientos esta sentencia nos permite 
alterar([],[]). %nos permite terminar nuestra recursividad
alterar([A|B],[C|R]):-cambio(A,C),alterar(B,R).

% ?-alterar([you,are,a,computer],X).




mujer(maria).
mujer(fiona).
mujer(sonia).
hombre(juan).
hombre(alberto).
hombre(genaro).
%pareja_baile(X,Y):-mujer(X),hombre(Y).
pareja_baile(X,Y):-mujer(X),!,hombre(Y).
%El simbolo ! esta forzando a hacer un corte/barrera, ya no podrá regresar o volver a instanciar el valor de X
%  ?-pareja_baile(A,B)




prestaciones(Clie,Pres):-prestaciones_vencido(Clie,Libro,!,prestaciones_basicas(Pres)).
prestaciones(Clie,Pres):-prestaciones_generales(Pres).                                              
prestaciones_basicas(referencias).
prestaciones_basicas(consultas).
prestaciones_adicionales(prestamo).
prestaciones_adicionales(prestamo_bibliotecario).
prestaciones_generales(X):-prestaciones_basicas(X).
prestaciones_generales(X):-prestaciones_adicionales(X).
cliente('E. Loza').
cliente('A. Diaz').
prestamo_vencido('A Diaz',id_book01).
prestamo_vencido('E. Loza',id_book02).
prestamo_vencido('E. Loza',id_book03).
%cliente(X),prestaciones(X,Pres)



suma(1,1):-!.
suma(N,Res):-N1 is N-1, suma(N1,Res1), Res is Res1+N.
%?-suma(2,Res)
%Respuesta=3
%?-suma(6,Res)
%Respiesta=21



evento(1810,[hidalgo,se,levanto,en_armas]).
evento(1847,[xxx,interviene,en,mexico]).
evento(1910,[madero,inicia,la,revolucion_mexicana]).
cuando(Ev):-read(An),evento(An,Ev).
%?-cuando(Ev).



