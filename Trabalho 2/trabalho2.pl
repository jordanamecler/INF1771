/*MAPA 12 x 12*/

/******************************************************************
**
** Dynamic
**
*******************************************************************/

:-dynamic quadrado/3.
:-dynamic posicao/3.
:-dynamic percepcao_passos/2.
:-dynamic percepcao_brisa/2.
:-dynamic percepcao_flash/2.
:-dynamic percepcao_ouro/2.
:-dynamic percepcao_vida/2.
:-dynamic possivelOcupado/3.
:-dynamic tiros/1.
:-dynamic energia/1.
:-dynamic custo/1.
:-dynamic posicaoInimigo1Dano20/2.
:-dynamic inimigo1Dano20/1.
:-dynamic posicaoInimigo2Dano20/2.
:-dynamic inimigo2Dano20/1.
:-dynamic posicaoInimigo1Dano50/2.
:-dynamic inimigo1Dano50/1.
:-dynamic posicaoInimigo2Dano50/2.
:-dynamic inimigo2Dano50/1.

/******************************************************************
**
** Declarando 
**
*******************************************************************/

quadrado(1, 1, ouro).
quadrado(2, 1, vazio).
quadrado(3, 1, vazio).
quadrado(4, 1, vazio).
quadrado(5, 1, vazio).
quadrado(6, 1, vazio).
quadrado(7, 1, vazio).
quadrado(8, 1, vazio).
quadrado(9, 1, vazio).
quadrado(10, 1, vazio).
quadrado(11, 1, vazio).
quadrado(12, 1, vazio).
quadrado(1, 2, vazio).
quadrado(2, 2, poco).
quadrado(3, 2, vazio).
quadrado(4, 2, vazio).
quadrado(5, 2, vazio).
quadrado(6, 2, teletransporte).
quadrado(7, 2, vazio).
quadrado(8, 2, vazio).
quadrado(9, 2, vazio).
quadrado(10, 2, poco).
quadrado(11, 2, vazio).
quadrado(12, 2, vazio).
quadrado(1, 3, vazio).
quadrado(2, 3, vazio).
quadrado(3, 3, inimigo1dano50).
quadrado(4, 3, vazio).
quadrado(5, 3, vazio).
quadrado(6, 3, vazio).
quadrado(7, 3, vida).
quadrado(8, 3, vazio).
quadrado(9, 3, vazio).
quadrado(10, 3, vazio).
quadrado(11, 3, vazio).
quadrado(12, 3, vazio).
quadrado(1, 4, vazio).
quadrado(2, 4, vazio).
quadrado(3, 4, vazio).
quadrado(4, 4, vazio).
quadrado(5, 4, vazio).
quadrado(6, 4, vazio).
quadrado(7, 4, vazio).
quadrado(8, 4, vazio).
quadrado(9, 4, inimigo1dano20).
quadrado(10, 4, vazio).
quadrado(11, 4, vazio).
quadrado(12, 4, vazio).
quadrado(1, 5, vazio).
quadrado(2, 5, vazio).
quadrado(3, 5, vazio).
quadrado(4, 5, vazio).
quadrado(5, 5, vazio).
quadrado(6, 5, vazio).
quadrado(7, 5, teletransporte).
quadrado(8, 5, vazio).
quadrado(9, 5, vazio).
quadrado(10, 5, vazio).
quadrado(11, 5, poco).
quadrado(12, 5, vazio).
quadrado(1, 6, vida).
quadrado(2, 6, vazio).
quadrado(3, 6, vazio).
quadrado(4, 6, vazio).
quadrado(5, 6, vazio).
quadrado(6, 6, vazio).
quadrado(7, 6, vazio).
quadrado(8, 6, vazio).
quadrado(9, 6, vazio).
quadrado(10, 6, vazio).
quadrado(11, 6, vazio).
quadrado(12, 6, vazio).
quadrado(1, 7, vazio).
quadrado(2, 7, vazio).
quadrado(3, 7, vazio).
quadrado(4, 7, vazio).
quadrado(5, 7, vazio).
quadrado(6, 7, poco).
quadrado(7, 7, vazio).
quadrado(8, 7, ouro).
quadrado(9, 7, vazio).
quadrado(10, 7, vazio).
quadrado(11, 7, vazio).
quadrado(12, 7, vazio).
quadrado(1, 8, vazio).
quadrado(2, 8, vazio).
quadrado(3, 8, vazio).
quadrado(4, 8, vazio).
quadrado(5, 8, vazio).
quadrado(6, 8, inimigo2dano50).
quadrado(7, 8, vazio).
quadrado(8, 8, poco).
quadrado(9, 8, vazio).
quadrado(10, 8, vazio).
quadrado(11, 8, vazio).
quadrado(12, 8, vazio).
quadrado(1, 9, vazio).
quadrado(2, 9, vazio).
quadrado(3, 9, inimigo2dano20).
quadrado(4, 9, vazio).
quadrado(5, 9, vazio).
quadrado(6, 9, vazio).
quadrado(7, 9, vazio).
quadrado(8, 9, vazio).
quadrado(9, 9, vazio).
quadrado(10, 9, vazio).
quadrado(11, 9, teletransporte).
quadrado(12, 9, vazio).
quadrado(1, 10, poco).
quadrado(2, 10, vazio).
quadrado(3, 10, vazio).
quadrado(4, 10, vazio).
quadrado(5, 10, vazio).
quadrado(6, 10, vazio).
quadrado(7, 10, vazio).
quadrado(8, 10, vazio).
quadrado(9, 10, poco).
quadrado(10, 10, vazio).
quadrado(11, 10, vazio).
quadrado(12, 10, vazio).
quadrado(1, 11, vazio).
quadrado(2, 11, vazio).
quadrado(3, 11, vazio).
quadrado(4, 11, poco).
quadrado(5, 11, vazio).
quadrado(6, 11, vazio).
quadrado(7, 11, vazio).
quadrado(8, 11, vazio).
quadrado(9, 11, vazio).
quadrado(10, 11, vazio).
quadrado(11, 11, vazio).
quadrado(12, 11, ouro).
quadrado(1, 12, eu).
quadrado(2, 12, vazio).
quadrado(3, 12, vazio).
quadrado(4, 12, vazio).
quadrado(5, 12, vazio).
quadrado(6, 12, vazio).
quadrado(7, 12, teletransporte).
quadrado(8, 12, vazio).
quadrado(9, 12, vazio).
quadrado(10, 12, vida).
quadrado(11, 12, vazio).
quadrado(12, 12, vazio).

posicao(1, 12, norte).

tiros(5).

energia(100).

custo(0).

inimigo1Dano20(100).
inimigo2Dano20(100).
inimigo1Dano50(100).
inimigo2Dano50(100).


/******************************************************************
**
** Reconhece Adjacencias
**
*******************************************************************/


adjacente(X, Y, XX, Y) :- XX is X + 1, XX < 13.
adjacente(X, Y, XX, Y) :- XX is X - 1, XX > 0.
adjacente(X, Y, X, YY) :- YY is Y + 1, YY < 13.
adjacente(X, Y, X, YY) :- YY is Y - 1, YY > 0.

/******************************************************************
**
** Percepcoes na Posicao
**
*******************************************************************/

percepcao_passos(X, Y) :- adjacente(X, Y, XX, YY), (quadrado(XX, YY, inimigo1dano20) ; quadrado(XX, YY, inimigo2dano20) ; quadrado(XX, YY, inimigo1dano50) ; quadrado(XX, YY, inimigo2dano50)).
percepcao_brisa(X, Y) :- adjacente(X, Y, XX, YY), quadrado(XX, YY, poco).
percepcao_flash(X, Y) :- adjacente(X, Y, XX, YY), quadrado(XX, YY, teletransporte).

percepcao_ouro(X, Y) :- quadrado(X, Y, ouro).
percepcao_vida(X, Y) :- quadrado(X, Y, vida).

%possivelOcupado(XX, YY, passos) :- percepcao(X, Y, passos), adjacente(X, Y, XX, YY).
%possivelOcupado(XX, YY, brisa) :- percepcao(X, Y, brisa), adjacente(X, Y, XX, YY).
%possivelOcupado(XX, YY, flash) :- percepcao(X, Y, flash), adjacente(X, Y, XX, YY).

%percepcao(XX, YY, passos) :- findall(Z, (adjacente(XX, YY, X, Y), posicao(X, Y, Z)), C), C = monstro.
%percepcao(XX, YY, brisa) :- findall(Z, (adjacente(XX, YY, X, Y), posicao(X, Y, Z)), C), C = poco.
%percepcao(XX, YY, flash) :- findall(Z, (adjacente(XX, YY, X, Y), posicao(X, Y, Z)), C), C = flash.


/******************************************************************
**
** AÇÕES - Mover para a frente
**
*******************************************************************/

mover_para_frente :- posicao(X,Y,P), P = norte,  Y > 1, YY is Y - 1,
				 custo(C), CC is C - 1, retract(custo(_)), assert(custo(CC)),
         	     retract(posicao(_,_,_)), assert(posicao(X, YY, P)),!.
		 
mover_para_frente :- posicao(X,Y,P), P = sul,  Y < 12, YY is Y + 1, 
				 custo(C), CC is C - 1, retract(custo(_)), assert(custo(CC)),
         	     retract(posicao(_,_,_)), assert(posicao(X, YY, P)),!.

mover_para_frente :- posicao(X,Y,P), P = leste,  X < 12, XX is X + 1, 
				 custo(C), CC is C - 1, retract(custo(_)), assert(custo(CC)),
        	     retract(posicao(_,_,_)), assert(posicao(XX, Y, P)),!.

mover_para_frente :- posicao(X,Y,P), P = oeste,  X > 1, XX is X - 1, 
				 custo(C), CC is C - 1, retract(custo(_)), assert(custo(CC)),
         	     retract(posicao(_,_,_)), assert(posicao(XX, Y, P)),!.
         	     
/******************************************************************
**
** AÇÕES - Virar a direita
**
*******************************************************************/

virar_a_direita :- posicao(X, Y, norte), 
				   custo(C), CC is C - 1, retract(custo(_)), assert(custo(CC)),
	 			   retract(posicao(_,_,_)), assert(posicao(X, Y, leste)),!.

virar_a_direita :- posicao(X, Y, oeste), 
				   custo(C), CC is C - 1, retract(custo(_)), assert(custo(CC)),
				   retract(posicao(_,_,_)), assert(posicao(X, Y, norte)),!.

virar_a_direita :- posicao(X, Y, sul), 
				  custo(C), CC is C - 1, retract(custo(_)), assert(custo(CC)),
			  	  retract(posicao(_,_,_)), assert(posicao(X, Y, oeste)),!.

virar_a_direita :- posicao(X, Y, leste), 
				   custo(C), CC is C - 1, retract(custo(_)), assert(custo(CC)),
				   retract(posicao(_,_,_)), assert(posicao(X, Y, sul)),!.
				   
/******************************************************************
**
** AÇÕES - Pegar Objeto
**
*******************************************************************/

pegar_objeto :- posicao(PX, PY, _), ouro(OX, OY), PX == OX, PY == OY,
				energia(E2), EE2 is E2 + 1000, retract(energia(_)), assert(energia(EE2)),!.

/******************************************************************
**
** AÇÕES - Mostrar inimigo morto
**
*******************************************************************/

inimigo_morreu(X,Y,NF) :- NF > 0, Y > 0, X > 0,!.

inimigo_morreu(X,Y,NF) :- NF < 0,  posicaoInimigo1Dano20(PX, PY), PX == X, PY == Y,
						  retract(posicaoInimigo1Dano20(_,_)), assert(posicaoInimigo1Dano20(-5, -5)),
						  write('grito'),!.

inimigo_morreu(X,Y,NF) :- NF < 0,  posicaoInimigo2Dano20(PX, PY), PX == X, PY == Y,
						  retract(posicaoInimigo2Dano20(_,_)), assert(posicaoInimigo2Dano20(-5, -5)),
						  write('grito'),!.

inimigo_morreu(X,Y,NF) :- NF < 0,  posicaoInimigo1Dano50(PX, PY), PX == X, PY == Y,
						  retract(posicaoInimigo1Dano50(_,_)), assert(posicaoInimigo1Dano50(-5, -5)),
						  write('grito'),!.

inimigo_morreu(X,Y,NF) :- NF < 0,  posicaoInimigo2Dano50(PX, PY), PX == X, PY == Y,
						  retract(posicaoInimigo2Dano50(_,_)), assert(posicaoInimigo2Dano50(-5, -5)),
						  write('grito'),!.
				
/******************************************************************
**
** AÇÕES - Diminuir energia do inimigo 
**
*******************************************************************/

diminuir_energia_inimigo(X,Y,FA) :- posicaoInimigo1Dano20(PX, PY), PX == X, PY == Y,
									inimigo1Dano20(FATUAL), NF is FATUAL - FA, 
									inimigo_morreu(X,Y,NF),
									retract(inimigo1Dano20(_)), assert(inimigo1Dano20(NF)),!.

diminuir_energia_inimigo(X,Y,FA) :- posicaoInimigo2Dano20(PX, PY), PX == X, PY == Y,
									inimigo2Dano20(FATUAL), NF is FATUAL - FA, 
									inimigo_morreu(X,Y,NF),
									retract(inimigo2Dano20(_)), assert(inimigo2Dano20(NF)),!.

diminuir_energia_inimigo(X,Y,FA) :- posicaoInimigo1Dano50(PX, PY), PX == X, PY == Y,
									inimigo1Dano50(FATUAL), NF is FATUAL - FA, 
									inimigo_morreu(X,Y,NF),
									retract(inimigo1Dano50(_)), assert(inimigo1Dano50(NF)),!.

diminuir_energia_inimigo(X,Y,FA) :- posicaoInimigo2Dano50(PX, PY), PX == X, PY == Y,
									inimigo2Dano50(FATUAL), NF is FATUAL - FA, 
									inimigo_morreu(X,Y,NF),
									retract(inimigo2Dano50(_)), assert(inimigo2Dano50(NF)),!.

/******************************************************************
**
** AÇÕES - Atirar
**
*******************************************************************/

atirar :-   posicao(X, Y, _), existe_Inimigo_Posicao(X, Y),
			random(20, 51, FA), diminuir_energia_inimigo(X,Y,FA),
			tiros(T), T > 0, TT is T - 1, retract(tiros(_)), assert(tiros(TT)),
			energia(E), EE is E - 10, retract(energia(_)), assert(energia(EE)),!.
			
atirar :-   posicao(X, Y, norte), PY is Y - 1, existe_Inimigo_Posicao(X, PY),
			random(20, 51, FA), diminuir_energia_inimigo(X,PY,FA),
			tiros(T), T > 0, TT is T - 1, retract(tiros(_)), assert(tiros(TT)),
			energia(E), EE is E - 10, retract(energia(_)), assert(energia(EE)),!.
			
atirar :-   posicao(X, Y, sul), PY is Y + 1, existe_Inimigo_Posicao(X, PY),
			random(20, 51, FA), diminuir_energia_inimigo(X,PY,FA),
			tiros(T), T > 0, TT is T - 1, retract(tiros(_)), assert(tiros(TT)),
			energia(E), EE is E - 10, retract(energia(_)), assert(energia(EE)),!.	
			
atirar :-   posicao(X, Y, leste), PX is X + 1, existe_Inimigo_Posicao(PX, Y),
			random(20, 51, FA), diminuir_energia_inimigo(PX,Y,FA),
			tiros(T), T > 0, TT is T - 1, retract(tiros(_)), assert(tiros(TT)),
			energia(E), EE is E - 10, retract(energia(_)), assert(energia(EE)),!.	
			
atirar :-   posicao(X, Y, oeste), PX is X - 1, existe_Inimigo_Posicao(PX, Y),
			random(20, 51, FA), diminuir_energia_inimigo(PX,Y,FA),
			tiros(T), T > 0, TT is T - 1, retract(tiros(_)), assert(tiros(TT)),
			energia(E), EE is E - 10, retract(energia(_)), assert(energia(EE)),!.	
				
/******************************************************************
**
** AÇÕES - Subir
**
*******************************************************************/				

subir :- posicao(X, Y, _), X == 1, Y == 1,
         energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),!.
         
/******************************************************************
**
** Funções Genéricas
**
*******************************************************************/

imprime_posicao(X, Y) :-  write('X = '), write(X), write(', Y = '), write(Y),!.

/******************************************************************
**
** Percepções - Inimigo
**
*******************************************************************/

/* Caso Sul */
percepcoes_inimigo(X,Y) :-  Y < 24, YY is Y + 1,
							( (posicaoInimigo1Dano20(PX, PY), PX == X, PY == YY); 
					 		  (posicaoInimigo2Dano20(PX, PY), PX == X, PY == YY); 
							  (posicaoInimigo1Dano50(PX, PY), PX == X, PY == YY); 
							  (posicaoInimigo2Dano50(PX, PY), PX == X, PY == YY) ),
							write('passos'),!.
						    
/* Caso Norte */
percepcoes_inimigo(X,Y) :-  Y > 1, YY is Y - 1,
							( (posicaoInimigo1Dano20(PX, PY), PX == X, PY == YY); 
					 		  (posicaoInimigo2Dano20(PX, PY), PX == X, PY == YY); 
							  (posicaoInimigo1Dano50(PX, PY), PX == X, PY == YY); 
							  (posicaoInimigo2Dano50(PX, PY), PX == X, PY == YY) ),
							write('passos'),!.

/* Caso Leste */
percepcoes_inimigo(X,Y) :-  X < 24, XX is X + 1,
							( (posicaoInimigo1Dano20(PX, PY), PX == XX, PY == Y); 
					 		  (posicaoInimigo2Dano20(PX, PY), PX == XX, PY == Y); 
							  (posicaoInimigo1Dano50(PX, PY), PX == XX, PY == Y); 
							  (posicaoInimigo2Dano50(PX, PY), PX == XX, PY == Y) ),
							write('passos'),!.
							
/* Caso Oeste */
percepcoes_inimigo(X,Y) :-  X > 1, XX is X - 1,
							( (posicaoInimigo1Dano20(PX, PY), PX == XX, PY == Y); 
					 		  (posicaoInimigo2Dano20(PX, PY), PX == XX, PY == Y); 
							  (posicaoInimigo1Dano50(PX, PY), PX == XX, PY == Y); 
							  (posicaoInimigo2Dano50(PX, PY), PX == XX, PY == Y) ),
							write('passos'),!.
			
/******************************************************************
**
** Percepções - Melhor movimento
**
*******************************************************************/