/*MAPA 12 x 12*/

/******************************************************************
**
** Dynamic
**
*******************************************************************/

:-dynamic quadrado/3.
:-dynamic posicao/3.
:-dynamic ouro/2.
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
quadrado(3, 3, inimigo50).
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
quadrado(9, 4, inimigo20).
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
quadrado(6, 8, inimigo50).
quadrado(7, 8, vazio).
quadrado(8, 8, poco).
quadrado(9, 8, vazio).
quadrado(10, 8, vazio).
quadrado(11, 8, vazio).
quadrado(12, 8, vazio).
quadrado(1, 9, vazio).
quadrado(2, 9, vazio).
quadrado(3, 9, inimigo20).
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

posicao(1,12, norte).

ouro(1, 1).
ouro(8, 7).
ouro(12, 11).

tiros(5).

energia(100).

custo(0).

posicaoInimigo1Dano20(3, 9).
inimigo1Dano20(100).

posicaoInimigo2Dano20(9, 4).
inimigo2Dano20(100).

posicaoInimigo1Dano50(3, 3).
inimigo1Dano50(100).

posicaoInimigo2Dano50(6, 8).
inimigo2Dano50(100).

/******************************************************************
**
** Funções Mapeia Quadrados
**
*******************************************************************/

adjacente(X, Y, XX, Y) :- XX is X + 1, XX > 0, XX < 13.
adjacente(X, Y, XX, Y) :- XX is X - 1, XX > 0, XX < 13.
adjacente(X, Y, X, YY) :- YY is Y + 1, YY > 0, YY < 13.
adjacente(X, Y, X, YY) :- YY is X - 1, YY > 0, YY < 13.

percepcao(XX, YY, passos) :- findall(Z, (adjacente(XX, YY, X, Y), posicao(X, Y, Z)), C), C = monstro.
percepcao(XX, YY, brisa) :- findall(Z, (adjacente(XX, YY, X, Y), posicao(X, Y, Z)), C), C = poco.
percepcao(XX, YY, flash) :- findall(Z, (adjacente(XX, YY, X, Y), posicao(X, Y, Z)), C), C = flash.

/******************************************************************
**
** Funções Get - Posição Inimigos
**
*******************************************************************/

getPosicaoInimigo(X, TYPE) :- X == 1, TYPE == 1, posicaoInimigo1Dano20(PX, PY), imprime_posicao(PX, PY),!.

getPosicaoInimigo(X, TYPE) :- X == 2, TYPE == 1, posicaoInimigo2Dano20(PX, PY), imprime_posicao(PX, PY),!.

getPosicaoInimigo(X, TYPE) :- X == 1, TYPE == 2, posicaoInimigo1Dano50(PX, PY), imprime_posicao(PX, PY),!.

getPosicaoInimigo(X, TYPE) :- X == 2, TYPE == 2, posicaoInimigo2Dano50(PX, PY), imprime_posicao(PX, PY),!.

/******************************************************************
**
** Funções Existe - Existe Inimigo na Posição X,Y
**
*******************************************************************/

existe_Inimigo_Posicao(X, Y) :- posicaoInimigo1Dano20(PX, PY), PX == X, PY == Y,!.

existe_Inimigo_Posicao(X, Y) :- posicaoInimigo2Dano20(PX, PY), PX == X, PY == Y,!.

existe_Inimigo_Posicao(X, Y) :- posicaoInimigo1Dano50(PX, PY), PX == X, PY == Y,!.

existe_Inimigo_Posicao(X, Y) :- posicaoInimigo2Dano50(PX, PY), PX == X, PY == Y,!.

/******************************************************************
**
** Iniciar jogo
**
*******************************************************************/

iniciar_valores :- recuperar_energia, recuperar_tiros, recuperar_inimigo(1,1), recuperar_inimigo(2,1),!.

gerar_posicoes :- gerar_Posicao_Ouro, gerar_Posicao_Inimigo(1,1), gerar_Posicao_Inimigo(2,1),!.

iniciar_jogo :- gerar_posicoes, iniciar_valores,!.

/******************************************************************
**
** Inicializando valores
**
*******************************************************************/

recuperar_energia :- retract(energia(_)), assert(energia(100)),!.

recuperar_tiros :- retract(tiros(_)), assert(tiros(5)),!.

recuperar_inimigo(X, TYPE) :-  X == 1, TYPE == 1, retract(inimigo1Dano20(_)), assert(inimigo1Dano20(100)),!.

recuperar_inimigo(X, TYPE) :-  X == 2, TYPE == 1, retract(inimigo2Dano20(_)), assert(inimigo2Dano20(100)),!.

recuperar_inimigo(X, TYPE) :-  X == 1, TYPE == 2, retract(inimigo1Dano50(_)), assert(inimigo1Dano50(100)),!.

recuperar_inimigo(X, TYPE) :-  X == 2, TYPE == 2, retract(inimigo2Dano50(_)), assert(inimigo2Dano50(100)),!.

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