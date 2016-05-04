/*MAPA 24 x 24*/

/******************************************************************
**
** Dynamic
**
*******************************************************************/

:-dynamic posicao/3.
:-dynamic ouro/2.
:-dynamic tiros/1.
:-dynamic energia/1.
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

posicao(1,1, norte).

ouro(0, 0).

tiros(5).

energia(100).

posicaoInimigo1Dano20(2, 2).
inimigo1Dano20(100).

posicaoInimigo2Dano20(0, 0).
inimigo2Dano20(100).

posicaoInimigo1Dano50(5, 5).
inimigo1Dano50(100).

posicaoInimigo2Dano50(10, 10).
inimigo2Dano50(100).

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
** Gerar posições
**
*******************************************************************/

gerar_Posicao_Ouro :- random(1,25,X), random(1,25,Y), retract(ouro(_,_)), assert(ouro(X, Y)).

gerar_Posicao_Inimigo(X, TYPE) :- X == 1, TYPE == 1, random(1,25,PX), random(1,25,PY), retract(posicaoInimigo1Dano20(_,_)), assert(posicaoInimigo1Dano20(PX, PY)),!.

gerar_Posicao_Inimigo(X, TYPE) :- X == 2, TYPE == 1, random(1,25,PX), random(1,25,PY), retract(posicaoInimigo2Dano20(_,_)), assert(posicaoInimigo2Dano20(PX, PY)),!.

gerar_Posicao_Inimigo(X, TYPE) :- X == 1, TYPE == 2, random(1,25,PX), random(1,25,PY), retract(posicaoInimigo1Dano50(_,_)), assert(posicaoInimigo1Dano50(PX, PY)),!.

gerar_Posicao_Inimigo(X, TYPE) :- X == 2, TYPE == 2, random(1,25,PX), random(1,25,PY), retract(posicaoInimigo2Dano50(_,_)), assert(posicaoInimigo2Dano50(PX, PY)),!.

/******************************************************************
**
** AÇÕES - Mover para a frente
**
*******************************************************************/

mover_para_frente :- posicao(X,Y,P), P = norte,  Y > 1, YY is Y - 1,
				 energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
         	     retract(posicao(_,_,_)), assert(posicao(X, YY, P)),!.
		 
mover_para_frente :- posicao(X,Y,P), P = sul,  Y < 25, YY is Y + 1, 
				 energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
         	     retract(posicao(_,_,_)), assert(posicao(X, YY, P)),!.

mover_para_frente :- posicao(X,Y,P), P = leste,  X < 25, XX is X + 1, 
				 energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
        	     retract(posicao(_,_,_)), assert(posicao(XX, Y, P)),!.

mover_para_frente :- posicao(X,Y,P), P = oeste,  X > 1, XX is X - 1, 
				 energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
         	     retract(posicao(_,_,_)), assert(posicao(XX, Y, P)),!.
         	     
/******************************************************************
**
** AÇÕES - Virar a direita
**
*******************************************************************/

virar_a_direita :- posicao(X,Y, norte), 
				   energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
	 			   retract(posicao(_,_,_)), assert(posicao(X, Y, leste)),!.

virar_a_direita :- posicao(X,Y, oeste), 
				   energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
				   retract(posicao(_,_,_)), assert(posicao(X, Y, norte)),!.

virar_a_direita :- posicao(X,Y, sul), 
				   energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
			  	  retract(posicao(_,_,_)), assert(posicao(X, Y, oeste)),!.

virar_a_direita :- posicao(X,Y, leste), 
				   energia(E), EE is E - 1, retract(energia(_)), assert(energia(EE)),
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

inimigo_morreu(X,Y,NF) :- NF < 0, Y > 0, X > 0,!.

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
